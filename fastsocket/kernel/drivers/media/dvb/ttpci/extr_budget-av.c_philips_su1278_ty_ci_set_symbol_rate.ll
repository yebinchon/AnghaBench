; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_su1278_ty_ci_set_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_budget-av.c_philips_su1278_ty_ci_set_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @philips_su1278_ty_ci_set_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @philips_su1278_ty_ci_set_symbol_rate(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 181, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2000000
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 134, i32* %8, align 4
  br label %28

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 5000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 137, i32* %8, align 4
  br label %27

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 15000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 143, i32* %8, align 4
  br label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 45000000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 149, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25, %20
  br label %27

27:                                               ; preds = %26, %16
  br label %28

28:                                               ; preds = %27, %12
  store i32 20, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 4000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 16, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @stv0299_writereg(%struct.dvb_frontend* %33, i32 19, i32 %34)
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @stv0299_writereg(%struct.dvb_frontend* %36, i32 20, i32 %37)
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = call i32 @stv0299_writereg(%struct.dvb_frontend* %39, i32 31, i32 %42)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = call i32 @stv0299_writereg(%struct.dvb_frontend* %44, i32 32, i32 %47)
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 240
  %52 = call i32 @stv0299_writereg(%struct.dvb_frontend* %49, i32 33, i32 %51)
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %54 = load i32, i32* %9, align 4
  %55 = or i32 128, %54
  %56 = call i32 @stv0299_writereg(%struct.dvb_frontend* %53, i32 15, i32 %55)
  ret i32 0
}

declare dso_local i32 @stv0299_writereg(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
