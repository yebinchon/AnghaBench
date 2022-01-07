; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i64 }

@STATUS_BUF_WRITE_RDY = common dso_local global i32 0, align 4
@MMC_REG_BUFFER_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxcmci_host*, i8*, i32)* @mxcmci_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_push(%struct.mxcmci_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  br label %14

14:                                               ; preds = %25, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %19 = load i32, i32* @STATUS_BUF_WRITE_RDY, align 4
  %20 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %17
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %9, align 8
  %28 = load i32, i32* %26, align 4
  %29 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %30 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MMC_REG_BUFFER_ACCESS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 4
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i32*, i32** %9, align 8
  store i32* %41, i32** %10, align 8
  %42 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %43 = load i32, i32* @STATUS_BUF_WRITE_RDY, align 4
  %44 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %69

49:                                               ; preds = %40
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memcpy(i32* %11, i32* %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %55 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MMC_REG_BUFFER_ACCESS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %49, %37
  %61 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %62 = load i32, i32* @STATUS_BUF_WRITE_RDY, align 4
  %63 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %66, %47, %23
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @mxcmci_poll_status(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
