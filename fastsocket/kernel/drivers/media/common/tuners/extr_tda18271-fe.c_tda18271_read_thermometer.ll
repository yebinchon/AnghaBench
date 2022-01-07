; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_read_thermometer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_read_thermometer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@R_TM = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_read_thermometer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_read_thermometer(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  store %struct.tda18271_priv* %8, %struct.tda18271_priv** %3, align 8
  %9 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %10 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* @R_TM, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 1
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %20 = load i64, i64* @R_TM, align 8
  %21 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %19, i64 %20, i32 1)
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %23 = call i32 @tda18271_read_regs(%struct.dvb_frontend* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = load i64, i64* @R_TM, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* @R_TM, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %55, label %39

39:                                               ; preds = %31, %1
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* @R_TM, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %86

47:                                               ; preds = %39
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* @R_TM, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %47, %31
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* @R_TM, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* @R_TM, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, -33
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  br label %79

71:                                               ; preds = %55
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* @R_TM, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, 32
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %71, %63
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %81 = load i64, i64* @R_TM, align 8
  %82 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %80, i64 %81, i32 1)
  %83 = call i32 @msleep(i32 10)
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %85 = call i32 @tda18271_read_regs(%struct.dvb_frontend* %84)
  br label %86

86:                                               ; preds = %79, %47, %39
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %88 = call i32 @tda18271_lookup_thermometer(%struct.dvb_frontend* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = load i64, i64* @R_TM, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, -17
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %97 = load i64, i64* @R_TM, align 8
  %98 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %96, i64 %97, i32 1)
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* @R_EP4, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, -4
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 1
  %106 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %107 = load i64, i64* @R_EP4, align 8
  %108 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %106, i64 %107, i32 1)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @tda18271_read_regs(%struct.dvb_frontend*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tda18271_lookup_thermometer(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
