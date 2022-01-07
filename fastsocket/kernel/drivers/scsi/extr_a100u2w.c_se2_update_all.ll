; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_se2_update_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_se2_update_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i32 }

@default_nvram = common dso_local global i64 0, align 8
@nvramp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orc_host*)* @se2_update_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se2_update_all(%struct.orc_host* %0) #0 {
  %2 = alloca %struct.orc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.orc_host* %0, %struct.orc_host** %2, align 8
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* @default_nvram, align 8
  %8 = inttoptr i64 %7 to i64*
  store i64* %8, i64** %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 63
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %14, i64** %4, align 8
  %15 = load i64, i64* %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load i64, i64* %6, align 8
  %23 = load i64*, i64** %4, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* @default_nvram, align 8
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %4, align 8
  %26 = load i64, i64* @nvramp, align 8
  %27 = inttoptr i64 %26 to i64*
  store i64* %27, i64** %5, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %45, %21
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 64
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.orc_host*, %struct.orc_host** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %4, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @orc_nv_write(%struct.orc_host* %38, i64 %40, i64 %42)
  br label %44

44:                                               ; preds = %37, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %4, align 8
  %50 = load i64*, i64** %5, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %5, align 8
  br label %28

52:                                               ; preds = %28
  ret void
}

declare dso_local i32 @orc_nv_write(%struct.orc_host*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
