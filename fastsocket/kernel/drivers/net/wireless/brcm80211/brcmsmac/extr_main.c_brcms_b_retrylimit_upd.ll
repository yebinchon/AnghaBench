; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_retrylimit_upd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_retrylimit_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32, i32, i64 }

@objaddr = common dso_local global i32 0, align 4
@OBJADDR_SCR_SEL = common dso_local global i32 0, align 4
@S_DOT11_SRC_LMT = common dso_local global i32 0, align 4
@objdata = common dso_local global i32 0, align 4
@S_DOT11_LRC_LMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i8*, i8*)* @brcms_b_retrylimit_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_retrylimit_upd(%struct.brcms_hardware* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.brcms_hardware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %16 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %21 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @objaddr, align 4
  %24 = call i32 @D11REGOFFS(i32 %23)
  %25 = load i32, i32* @OBJADDR_SCR_SEL, align 4
  %26 = load i32, i32* @S_DOT11_SRC_LMT, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @bcma_write32(i32 %22, i32 %24, i32 %27)
  %29 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %30 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @objaddr, align 4
  %33 = call i32 @D11REGOFFS(i32 %32)
  %34 = call i32 @bcma_read32(i32 %31, i32 %33)
  %35 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %36 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @objdata, align 4
  %39 = call i32 @D11REGOFFS(i32 %38)
  %40 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %41 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bcma_write32(i32 %37, i32 %39, i32 %42)
  %44 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %45 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @objaddr, align 4
  %48 = call i32 @D11REGOFFS(i32 %47)
  %49 = load i32, i32* @OBJADDR_SCR_SEL, align 4
  %50 = load i32, i32* @S_DOT11_LRC_LMT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @bcma_write32(i32 %46, i32 %48, i32 %51)
  %53 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %54 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @objaddr, align 4
  %57 = call i32 @D11REGOFFS(i32 %56)
  %58 = call i32 @bcma_read32(i32 %55, i32 %57)
  %59 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %60 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @objdata, align 4
  %63 = call i32 @D11REGOFFS(i32 %62)
  %64 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %65 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bcma_write32(i32 %61, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @bcma_write32(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
