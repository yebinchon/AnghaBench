; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_construct_wdtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_construct_wdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i8*, i32, i32 }

@MSG_EXTENDED = common dso_local global i8 0, align 1
@MSG_EXT_WDTR_LEN = common dso_local global i8 0, align 1
@MSG_EXT_WDTR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i8)* @aic7xxx_construct_wdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_construct_wdtr(%struct.aic7xxx_host* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* @MSG_EXTENDED, align 1
  %6 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %7 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %10 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %8, i64 %13
  store i8 %5, i8* %14, align 1
  %15 = load i8, i8* @MSG_EXT_WDTR_LEN, align 1
  %16 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %17 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %20 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  store i8 %15, i8* %24, align 1
  %25 = load i8, i8* @MSG_EXT_WDTR, align 1
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %27 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %30 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  store i8 %25, i8* %34, align 1
  %35 = load i8, i8* %4, align 1
  %36 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %37 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %40 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8 %35, i8* %44, align 1
  %45 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %46 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %46, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
