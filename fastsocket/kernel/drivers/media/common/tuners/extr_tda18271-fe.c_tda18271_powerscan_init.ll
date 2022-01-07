; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_powerscan_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_powerscan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@R_EP3 = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@R_EB18 = common dso_local global i64 0, align 8
@R_EB21 = common dso_local global i64 0, align 8
@R_EB23 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_powerscan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_powerscan_init(%struct.dvb_frontend* %0) #0 {
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
  %13 = load i64, i64* @R_EP3, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, -32
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %14, align 1
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* @R_EP3, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, 18
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %21, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* @R_EP4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, -4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* @R_EP4, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, -29
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = load i64, i64* @R_EP3, align 8
  %42 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %40, i64 %41, i32 2)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @tda_fail(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  br label %87

47:                                               ; preds = %1
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* @R_EB18, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, -4
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %56 = load i64, i64* @R_EB18, align 8
  %57 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %55, i64 %56, i32 1)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @tda_fail(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %87

62:                                               ; preds = %47
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* @R_EB21, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, -4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* @R_EB23, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, 4
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* @R_EB23, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, 2
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %79, align 1
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %85 = load i64, i64* @R_EB21, align 8
  %86 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %84, i64 %85, i32 3)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %62, %61, %46
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
