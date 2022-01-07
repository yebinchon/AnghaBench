; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_construct_sdtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_construct_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i8*, i32, i32 }

@MSG_EXTENDED = common dso_local global i8 0, align 1
@MSG_EXT_SDTR_LEN = common dso_local global i8 0, align 1
@MSG_EXT_SDTR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i8, i8)* @aic7xxx_construct_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_construct_sdtr(%struct.aic7xxx_host* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.aic7xxx_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %7 = load i8, i8* @MSG_EXTENDED, align 1
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %9 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %12 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  store i8 %7, i8* %16, align 1
  %17 = load i8, i8* @MSG_EXT_SDTR_LEN, align 1
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %19 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %22 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 %17, i8* %26, align 1
  %27 = load i8, i8* @MSG_EXT_SDTR, align 1
  %28 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %29 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %32 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8 %27, i8* %36, align 1
  %37 = load i8, i8* %5, align 1
  %38 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %39 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %42 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 %37, i8* %46, align 1
  %47 = load i8, i8* %6, align 1
  %48 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %49 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %52 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  store i8 %47, i8* %56, align 1
  %57 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %58 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 5
  store i32 %60, i32* %58, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
