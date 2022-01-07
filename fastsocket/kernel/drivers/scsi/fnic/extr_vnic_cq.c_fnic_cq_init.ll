; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_vnic_cq.c_fnic_cq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_vnic_cq.c_fnic_cq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_cq = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_cq_init(%struct.vnic_cq* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.vnic_cq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.vnic_cq* %0, %struct.vnic_cq** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %24 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %25 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %33 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 11
  %36 = call i32 @writeq(i32 %31, i32* %35)
  %37 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %38 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %42 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 10
  %45 = call i32 @iowrite32(i32 %40, i32* %44)
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %48 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 9
  %51 = call i32 @iowrite32(i32 %46, i32* %50)
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %54 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 8
  %57 = call i32 @iowrite32(i32 %52, i32* %56)
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %60 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = call i32 @iowrite32(i32 %58, i32* %62)
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %66 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 6
  %69 = call i32 @iowrite32(i32 %64, i32* %68)
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %72 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = call i32 @iowrite32(i32 %70, i32* %74)
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %78 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  %81 = call i32 @iowrite32(i32 %76, i32* %80)
  %82 = load i32, i32* %19, align 4
  %83 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %84 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = call i32 @iowrite32(i32 %82, i32* %86)
  %88 = load i32, i32* %20, align 4
  %89 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %90 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = call i32 @iowrite32(i32 %88, i32* %92)
  %94 = load i32, i32* %21, align 4
  %95 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %96 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = call i32 @iowrite32(i32 %94, i32* %98)
  %100 = load i32, i32* %22, align 4
  %101 = load %struct.vnic_cq*, %struct.vnic_cq** %12, align 8
  %102 = getelementptr inbounds %struct.vnic_cq, %struct.vnic_cq* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @writeq(i32 %100, i32* %104)
  ret void
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
