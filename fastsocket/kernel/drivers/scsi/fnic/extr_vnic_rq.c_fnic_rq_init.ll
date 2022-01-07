; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_vnic_rq.c_fnic_rq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_vnic_rq.c_fnic_rq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i64, %struct.TYPE_4__*, i32**, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4
@VNIC_RQ_BUF_BLK_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnic_rq_init(%struct.vnic_rq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vnic_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %12 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %20 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  %23 = call i32 @writeq(i32 %18, i32* %22)
  %24 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %25 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %29 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  %32 = call i32 @iowrite32(i64 %27, i32* %31)
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %36 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 6
  %39 = call i32 @iowrite32(i64 %34, i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %43 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = call i32 @iowrite32(i64 %41, i32* %45)
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %50 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = call i32 @iowrite32(i64 %48, i32* %52)
  %54 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %55 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = call i32 @iowrite32(i64 0, i32* %57)
  %59 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %60 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = call i32 @iowrite32(i64 0, i32* %62)
  %64 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %65 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = call i64 @ioread32(i32* %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %70 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %69, i32 0, i32 2
  %71 = load i32**, i32*** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @VNIC_RQ_BUF_BLK_ENTRIES, align 8
  %74 = udiv i64 %72, %73
  %75 = getelementptr inbounds i32*, i32** %71, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @VNIC_RQ_BUF_BLK_ENTRIES, align 8
  %79 = urem i64 %77, %78
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %82 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %81, i32 0, i32 3
  store i32* %80, i32** %82, align 8
  %83 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %84 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %83, i32 0, i32 4
  store i32* %80, i32** %84, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %87 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @iowrite32(i64 %85, i32* %89)
  %91 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %92 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  ret void
}

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i64 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
