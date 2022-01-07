; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_pull.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mxcmmc.c_mxcmci_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i64 }

@STATUS_BUF_READ_RDY = common dso_local global i32 0, align 4
@STATUS_READ_OP_DONE = common dso_local global i32 0, align 4
@MMC_REG_BUFFER_ACCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxcmci_host*, i8*, i32)* @mxcmci_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxcmci_pull(%struct.mxcmci_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i8**
  store i8** %13, i8*** %9, align 8
  br label %14

14:                                               ; preds = %27, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %19 = load i32, i32* @STATUS_BUF_READ_RDY, align 4
  %20 = load i32, i32* @STATUS_READ_OP_DONE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %17
  %28 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %29 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MMC_REG_BUFFER_ACCESS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i8* @readl(i64 %32)
  %34 = load i8**, i8*** %9, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %9, align 8
  store i8* %33, i8** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 4
  store i32 %37, i32* %7, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i8**, i8*** %9, align 8
  %43 = bitcast i8** %42 to i32*
  store i32* %43, i32** %10, align 8
  %44 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %45 = load i32, i32* @STATUS_BUF_READ_RDY, align 4
  %46 = load i32, i32* @STATUS_READ_OP_DONE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @mxcmci_poll_status(%struct.mxcmci_host* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %64

53:                                               ; preds = %41
  %54 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %55 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MMC_REG_BUFFER_ACCESS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i8* @readl(i64 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @memcpy(i32* %60, i8** %11, i32 %61)
  br label %63

63:                                               ; preds = %53, %38
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %51, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mxcmci_poll_status(%struct.mxcmci_host*, i32) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
