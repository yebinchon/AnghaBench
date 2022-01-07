; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.dc390_acb = type { i32, %struct.dc390_dcb*, %struct.dc390_dcb*, %struct.dc390_dcb*, %struct.dc390_dcb*, i64 }
%struct.dc390_dcb = type { i32, %struct.dc390_dcb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @dc390_slave_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc390_slave_destroy(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.dc390_acb*, align 8
  %4 = alloca %struct.dc390_dcb*, align 8
  %5 = alloca %struct.dc390_dcb*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dc390_acb*
  store %struct.dc390_acb* %11, %struct.dc390_acb** %3, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dc390_dcb*
  store %struct.dc390_dcb* %15, %struct.dc390_dcb** %4, align 8
  %16 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %17 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %16, i32 0, i32 2
  %18 = load %struct.dc390_dcb*, %struct.dc390_dcb** %17, align 8
  store %struct.dc390_dcb* %18, %struct.dc390_dcb** %5, align 8
  %19 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %20 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %22 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %28 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %29 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %28, i32 0, i32 2
  %30 = load %struct.dc390_dcb*, %struct.dc390_dcb** %29, align 8
  %31 = icmp eq %struct.dc390_dcb* %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %1
  %33 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %34 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %33, i32 0, i32 4
  %35 = load %struct.dc390_dcb*, %struct.dc390_dcb** %34, align 8
  %36 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %37 = icmp eq %struct.dc390_dcb* %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %40 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %39, i32 0, i32 1
  store %struct.dc390_dcb* null, %struct.dc390_dcb** %40, align 8
  %41 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %42 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %41, i32 0, i32 4
  store %struct.dc390_dcb* null, %struct.dc390_dcb** %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %45 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %44, i32 0, i32 1
  %46 = load %struct.dc390_dcb*, %struct.dc390_dcb** %45, align 8
  %47 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %48 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %47, i32 0, i32 2
  store %struct.dc390_dcb* %46, %struct.dc390_dcb** %48, align 8
  br label %76

49:                                               ; preds = %1
  br label %50

50:                                               ; preds = %56, %49
  %51 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %52 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %51, i32 0, i32 1
  %53 = load %struct.dc390_dcb*, %struct.dc390_dcb** %52, align 8
  %54 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %55 = icmp ne %struct.dc390_dcb* %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %58 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %57, i32 0, i32 1
  %59 = load %struct.dc390_dcb*, %struct.dc390_dcb** %58, align 8
  store %struct.dc390_dcb* %59, %struct.dc390_dcb** %5, align 8
  br label %50

60:                                               ; preds = %50
  %61 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %62 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %61, i32 0, i32 1
  %63 = load %struct.dc390_dcb*, %struct.dc390_dcb** %62, align 8
  %64 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %65 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %64, i32 0, i32 1
  store %struct.dc390_dcb* %63, %struct.dc390_dcb** %65, align 8
  %66 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %67 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %68 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %67, i32 0, i32 4
  %69 = load %struct.dc390_dcb*, %struct.dc390_dcb** %68, align 8
  %70 = icmp eq %struct.dc390_dcb* %66, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %73 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %74 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %73, i32 0, i32 4
  store %struct.dc390_dcb* %72, %struct.dc390_dcb** %74, align 8
  br label %75

75:                                               ; preds = %71, %60
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %78 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %79 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %78, i32 0, i32 3
  %80 = load %struct.dc390_dcb*, %struct.dc390_dcb** %79, align 8
  %81 = icmp eq %struct.dc390_dcb* %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %84 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %83, i32 0, i32 3
  store %struct.dc390_dcb* null, %struct.dc390_dcb** %84, align 8
  br label %85

85:                                               ; preds = %82, %76
  %86 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %87 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %88 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %87, i32 0, i32 2
  %89 = load %struct.dc390_dcb*, %struct.dc390_dcb** %88, align 8
  %90 = icmp eq %struct.dc390_dcb* %86, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %93 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %92, i32 0, i32 1
  %94 = load %struct.dc390_dcb*, %struct.dc390_dcb** %93, align 8
  %95 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %96 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %95, i32 0, i32 2
  store %struct.dc390_dcb* %94, %struct.dc390_dcb** %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %99 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %100 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %99, i32 0, i32 1
  %101 = load %struct.dc390_dcb*, %struct.dc390_dcb** %100, align 8
  %102 = icmp eq %struct.dc390_dcb* %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %105 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %104, i32 0, i32 1
  %106 = load %struct.dc390_dcb*, %struct.dc390_dcb** %105, align 8
  %107 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %108 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %107, i32 0, i32 1
  store %struct.dc390_dcb* %106, %struct.dc390_dcb** %108, align 8
  br label %109

109:                                              ; preds = %103, %97
  %110 = load %struct.dc390_dcb*, %struct.dc390_dcb** %4, align 8
  %111 = call i32 @kfree(%struct.dc390_dcb* %110)
  %112 = load %struct.dc390_acb*, %struct.dc390_acb** %3, align 8
  %113 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.dc390_dcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
