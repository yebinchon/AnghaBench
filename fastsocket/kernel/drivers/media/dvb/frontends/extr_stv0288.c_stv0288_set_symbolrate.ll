; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0288.c_stv0288_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0288.c_stv0288_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0288_state* }
%struct.stv0288_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"stv0288: stv0288_set_symbolrate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @stv0288_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0288_set_symbolrate(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv0288_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.stv0288_state*, %struct.stv0288_state** %10, align 8
  store %struct.stv0288_state* %11, %struct.stv0288_state** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 1000000
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 45000000
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = udiv i32 %21, 1000
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 %23, 32768
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = udiv i32 %25, 25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = udiv i32 %27, 125
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = lshr i32 %29, 12
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %32, i8* %33, align 1
  %34 = load i32, i32* %7, align 4
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 4
  %41 = and i32 %40, 240
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 %42, i8* %43, align 1
  %44 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %45 = call i32 @stv0288_writeregI(%struct.stv0288_state* %44, i32 40, i8 zeroext -128)
  %46 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %47 = call i32 @stv0288_writeregI(%struct.stv0288_state* %46, i32 41, i8 zeroext 0)
  %48 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %49 = call i32 @stv0288_writeregI(%struct.stv0288_state* %48, i32 42, i8 zeroext 0)
  %50 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %51 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @stv0288_writeregI(%struct.stv0288_state* %50, i32 40, i8 zeroext %52)
  %54 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @stv0288_writeregI(%struct.stv0288_state* %54, i32 41, i8 zeroext %56)
  %58 = load %struct.stv0288_state*, %struct.stv0288_state** %6, align 8
  %59 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @stv0288_writeregI(%struct.stv0288_state* %58, i32 42, i8 zeroext %60)
  %62 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %20, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @stv0288_writeregI(%struct.stv0288_state*, i32, i8 zeroext) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
