; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_mbox.c_lpfc_config_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@MBX_CONFIG_LINK = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_config_link(%struct.lpfc_hba* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 10
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  store %struct.lpfc_vport* %9, %struct.lpfc_vport** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = call i32 @memset(%struct.TYPE_12__* %13, i32 0, i32 64)
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 12
  store i64 %30, i64* %34, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 11
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %19, %2
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 10
  store i32 %45, i32* %49, align 8
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 9
  store i32 %52, i32* %56, align 4
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 8
  store i32 %59, i32* %63, align 8
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 7
  store i32 %66, i32* %70, align 4
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 6
  store i32 %73, i32* %77, align 8
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  store i32 %80, i32* %84, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 8
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 4
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %42
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %42
  %109 = load i32, i32* @MBX_CONFIG_LINK, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @OWN_HOST, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
