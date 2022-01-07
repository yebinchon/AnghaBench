; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_update_vport_wwn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_update_vport_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_update_vport_wwn(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %3 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %3, i32 0, i32 2
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @u64_to_wwn(i64 %14, i64* %20)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @u64_to_wwn(i64 %34, i64* %40)
  br label %42

42:                                               ; preds = %29, %22
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %44 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %52, i32 0, i32 2
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51, %42
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 3
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = call i32 @memcpy(%struct.TYPE_9__* %60, %struct.TYPE_9__* %63, i32 4)
  br label %72

65:                                               ; preds = %51
  %66 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %67 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %69, i32 0, i32 3
  %71 = call i32 @memcpy(%struct.TYPE_9__* %68, %struct.TYPE_9__* %70, i32 4)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %74 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %72
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81, %72
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 0
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %92 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = call i32 @memcpy(%struct.TYPE_9__* %90, %struct.TYPE_9__* %93, i32 4)
  br label %102

95:                                               ; preds = %81
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %97 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %100 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %99, i32 0, i32 0
  %101 = call i32 @memcpy(%struct.TYPE_9__* %98, %struct.TYPE_9__* %100, i32 4)
  br label %102

102:                                              ; preds = %95, %88
  ret void
}

declare dso_local i32 @u64_to_wwn(i64, i64*) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
