; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_alloc_cbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_alloc_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, %struct.cb*, %struct.cb*, %struct.cb*, %struct.cb*, i64, i32, i32, %struct.TYPE_4__ }
%struct.cb = type { i32, i64, %struct.cb*, %struct.cb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cuc_start = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_alloc_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_alloc_cbs(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  %7 = load %struct.nic*, %struct.nic** %3, align 8
  %8 = getelementptr inbounds %struct.nic, %struct.nic* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @cuc_start, align 4
  %13 = load %struct.nic*, %struct.nic** %3, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nic*, %struct.nic** %3, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 2
  store %struct.cb* null, %struct.cb** %16, align 8
  %17 = load %struct.nic*, %struct.nic** %3, align 8
  %18 = getelementptr inbounds %struct.nic, %struct.nic* %17, i32 0, i32 3
  store %struct.cb* null, %struct.cb** %18, align 8
  %19 = load %struct.nic*, %struct.nic** %3, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 4
  store %struct.cb* null, %struct.cb** %20, align 8
  %21 = load %struct.nic*, %struct.nic** %3, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.nic*, %struct.nic** %3, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.nic*, %struct.nic** %3, align 8
  %28 = getelementptr inbounds %struct.nic, %struct.nic* %27, i32 0, i32 5
  %29 = call %struct.cb* @pci_pool_alloc(i32 %25, i32 %26, i64* %28)
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 1
  store %struct.cb* %29, %struct.cb** %31, align 8
  %32 = load %struct.nic*, %struct.nic** %3, align 8
  %33 = getelementptr inbounds %struct.nic, %struct.nic* %32, i32 0, i32 1
  %34 = load %struct.cb*, %struct.cb** %33, align 8
  %35 = icmp ne %struct.cb* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %128

39:                                               ; preds = %1
  %40 = load %struct.nic*, %struct.nic** %3, align 8
  %41 = getelementptr inbounds %struct.nic, %struct.nic* %40, i32 0, i32 1
  %42 = load %struct.cb*, %struct.cb** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(%struct.cb* %42, i32 0, i32 %46)
  %48 = load %struct.nic*, %struct.nic** %3, align 8
  %49 = getelementptr inbounds %struct.nic, %struct.nic* %48, i32 0, i32 1
  %50 = load %struct.cb*, %struct.cb** %49, align 8
  store %struct.cb* %50, %struct.cb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %110, %39
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %115

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = add i32 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.cb*, %struct.cb** %4, align 8
  %62 = getelementptr inbounds %struct.cb, %struct.cb* %61, i64 1
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.nic*, %struct.nic** %3, align 8
  %65 = getelementptr inbounds %struct.nic, %struct.nic* %64, i32 0, i32 1
  %66 = load %struct.cb*, %struct.cb** %65, align 8
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi %struct.cb* [ %62, %60 ], [ %66, %63 ]
  %69 = load %struct.cb*, %struct.cb** %4, align 8
  %70 = getelementptr inbounds %struct.cb, %struct.cb* %69, i32 0, i32 3
  store %struct.cb* %68, %struct.cb** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.nic*, %struct.nic** %3, align 8
  %75 = getelementptr inbounds %struct.nic, %struct.nic* %74, i32 0, i32 1
  %76 = load %struct.cb*, %struct.cb** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cb, %struct.cb* %76, i64 %78
  %80 = getelementptr inbounds %struct.cb, %struct.cb* %79, i64 -1
  br label %84

81:                                               ; preds = %67
  %82 = load %struct.cb*, %struct.cb** %4, align 8
  %83 = getelementptr inbounds %struct.cb, %struct.cb* %82, i64 -1
  br label %84

84:                                               ; preds = %81, %73
  %85 = phi %struct.cb* [ %80, %73 ], [ %83, %81 ]
  %86 = load %struct.cb*, %struct.cb** %4, align 8
  %87 = getelementptr inbounds %struct.cb, %struct.cb* %86, i32 0, i32 2
  store %struct.cb* %85, %struct.cb** %87, align 8
  %88 = load %struct.nic*, %struct.nic** %3, align 8
  %89 = getelementptr inbounds %struct.nic, %struct.nic* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, 32
  %94 = add i64 %90, %93
  %95 = load %struct.cb*, %struct.cb** %4, align 8
  %96 = getelementptr inbounds %struct.cb, %struct.cb* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.nic*, %struct.nic** %3, align 8
  %98 = getelementptr inbounds %struct.nic, %struct.nic* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add i32 %100, 1
  %102 = load i32, i32* %6, align 4
  %103 = urem i32 %101, %102
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, 32
  %106 = add i64 %99, %105
  %107 = call i32 @cpu_to_le32(i64 %106)
  %108 = load %struct.cb*, %struct.cb** %4, align 8
  %109 = getelementptr inbounds %struct.cb, %struct.cb* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %84
  %111 = load %struct.cb*, %struct.cb** %4, align 8
  %112 = getelementptr inbounds %struct.cb, %struct.cb* %111, i32 1
  store %struct.cb* %112, %struct.cb** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %51

115:                                              ; preds = %51
  %116 = load %struct.nic*, %struct.nic** %3, align 8
  %117 = getelementptr inbounds %struct.nic, %struct.nic* %116, i32 0, i32 1
  %118 = load %struct.cb*, %struct.cb** %117, align 8
  %119 = load %struct.nic*, %struct.nic** %3, align 8
  %120 = getelementptr inbounds %struct.nic, %struct.nic* %119, i32 0, i32 2
  store %struct.cb* %118, %struct.cb** %120, align 8
  %121 = load %struct.nic*, %struct.nic** %3, align 8
  %122 = getelementptr inbounds %struct.nic, %struct.nic* %121, i32 0, i32 3
  store %struct.cb* %118, %struct.cb** %122, align 8
  %123 = load %struct.nic*, %struct.nic** %3, align 8
  %124 = getelementptr inbounds %struct.nic, %struct.nic* %123, i32 0, i32 4
  store %struct.cb* %118, %struct.cb** %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.nic*, %struct.nic** %3, align 8
  %127 = getelementptr inbounds %struct.nic, %struct.nic* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %115, %36
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.cb* @pci_pool_alloc(i32, i32, i64*) #1

declare dso_local i32 @memset(%struct.cb*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
