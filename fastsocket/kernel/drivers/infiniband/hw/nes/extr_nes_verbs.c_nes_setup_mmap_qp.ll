; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_setup_mmap_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_setup_mmap_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { i32, i8*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i64, i64, i64, i8*, i8* }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NES_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"PCI consistent memory for host descriptor rings located @ %p (pa = 0x%08lX.) size = %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_qp*, %struct.nes_vnic*, i32, i32)* @nes_setup_mmap_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_setup_mmap_qp(%struct.nes_qp* %0, %struct.nes_vnic* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca %struct.nes_vnic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nes_device*, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %6, align 8
  store %struct.nes_vnic* %1, %struct.nes_vnic** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nes_vnic*, %struct.nes_vnic** %7, align 8
  %13 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %12, i32 0, i32 0
  %14 = load %struct.nes_device*, %struct.nes_device** %13, align 8
  store %struct.nes_device* %14, %struct.nes_device** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %17, %20
  %22 = call i32 @max(i32 4, i32 256)
  %23 = sext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = add i64 %24, 256
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %28 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %32 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = xor i32 %36, -1
  %38 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %39 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.nes_device*, %struct.nes_device** %11, align 8
  %43 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %46 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %49 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = call i8* @pci_alloc_consistent(i32 %44, i32 %47, i64* %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %4
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %138

57:                                               ; preds = %4
  %58 = load i32, i32* @NES_DBG_QP, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %61 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %65 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @nes_debug(i32 %58, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i8* %59, i64 %63, i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %70 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memset(i8* %68, i32 0, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %75 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 5
  store i8* %73, i8** %76, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr i8, i8* %80, i64 %79
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %84 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %87 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 4, %91
  %93 = add i64 %89, %92
  %94 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %95 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i64 %93, i64* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr i8, i8* %100, i64 %99
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %104 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i8* %102, i8** %105, align 8
  %106 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %107 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = add i64 %109, %112
  %114 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %115 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr i8, i8* %117, i64 256
  store i8* %118, i8** %10, align 8
  %119 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %120 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @memset(i8* %122, i32 0, i32 256)
  %124 = load i8*, i8** %10, align 8
  %125 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %126 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %128 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 256
  %132 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %133 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %135 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @memset(i8* %136, i32 0, i32 1)
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %57, %54
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @nes_debug(i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
