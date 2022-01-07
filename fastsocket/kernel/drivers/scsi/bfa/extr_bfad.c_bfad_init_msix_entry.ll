; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_init_msix_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad.c_bfad_init_msix_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.bfad_s*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msix_entry = type { i32 }

@MAX_MSIX_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfad_s*, %struct.msix_entry*, i32, i32)* @bfad_init_msix_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_init_msix_entry(%struct.bfad_s* %0, %struct.msix_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.msix_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %5, align 8
  store %struct.msix_entry* %1, %struct.msix_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %56, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAX_MSIX_ENTRY, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %13
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %23, i32* %32, align 8
  %33 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %34 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store %struct.bfad_s* %33, %struct.bfad_s** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.msix_entry*, %struct.msix_entry** %6, align 8
  %44 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %43, i64 %46
  %48 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  %49 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %22, %17
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %13

59:                                               ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
