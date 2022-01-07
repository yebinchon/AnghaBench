; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10353.c_zl10353_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_zl10353.c_zl10353_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zl10353_state* }
%struct.zl10353_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@__const.zl10353_init.zl10353_reset_attach = private unnamed_addr constant [6 x i32] [i32 80, i32 3, i32 100, i32 70, i32 21, i32 15], align 16
@debug_regs = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @zl10353_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.zl10353_state*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.zl10353_state*, %struct.zl10353_state** %7, align 8
  store %struct.zl10353_state* %8, %struct.zl10353_state** %3, align 8
  %9 = bitcast [6 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x i32]* @__const.zl10353_init.zl10353_reset_attach to i8*), i64 24, i1 false)
  store i32 0, i32* %5, align 4
  %10 = load i64, i64* @debug_regs, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = call i32 @zl10353_dump_regs(%struct.dvb_frontend* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %17 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, -33
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %27 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %33 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 3
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %39 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %45 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  store i32 %47, i32* %48, align 16
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %51 = call i32 @zl10353_read_register(%struct.zl10353_state* %50, i32 80)
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.zl10353_state*, %struct.zl10353_state** %3, align 8
  %57 = call i32 @zl10353_read_register(%struct.zl10353_state* %56, i32 81)
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55, %49
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %64 = call i32 @zl10353_write(%struct.dvb_frontend* %62, i32* %63, i32 24)
  store i32 %64, i32* %5, align 4
  %65 = load i64, i64* @debug_regs, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %69 = call i32 @zl10353_dump_regs(%struct.dvb_frontend* %68)
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %55
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zl10353_dump_regs(%struct.dvb_frontend*) #2

declare dso_local i32 @zl10353_read_register(%struct.zl10353_state*, i32) #2

declare dso_local i32 @zl10353_write(%struct.dvb_frontend*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
