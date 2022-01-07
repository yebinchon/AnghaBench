; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_proclog.c_hysdn_log_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_proclog.c_hysdn_log_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.procdata*, %struct.TYPE_3__* }
%struct.procdata = type { i64, i64, %struct.log_data* }
%struct.log_data = type { %struct.log_data*, i32, i64 }
%struct.inode = type { i32 }
%struct.file = type { i32, i64 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@card_root = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hysdn_log_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hysdn_log_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.log_data*, align 8
  %6 = alloca %struct.procdata*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @lock_kernel()
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FMODE_READ, align 4
  %14 = load i32, i32* @FMODE_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @FMODE_WRITE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %111

20:                                               ; preds = %2
  store %struct.procdata* null, %struct.procdata** %6, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.log_data**
  %25 = load %struct.log_data*, %struct.log_data** %24, align 8
  store %struct.log_data* %25, %struct.log_data** %5, align 8
  %26 = load %struct.log_data*, %struct.log_data** %5, align 8
  %27 = icmp ne %struct.log_data* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.log_data*, %struct.log_data** %5, align 8
  %30 = getelementptr inbounds %struct.log_data, %struct.log_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.procdata*
  store %struct.procdata* %32, %struct.procdata** %6, align 8
  br label %61

33:                                               ; preds = %20
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @card_root, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %7, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.procdata*, %struct.procdata** %40, align 8
  store %struct.procdata* %41, %struct.procdata** %6, align 8
  %42 = load %struct.procdata*, %struct.procdata** %6, align 8
  %43 = getelementptr inbounds %struct.procdata, %struct.procdata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call i64 @PDE(%struct.inode* %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %7, align 8
  br label %35

53:                                               ; preds = %48, %35
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = icmp ne %struct.TYPE_3__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.procdata*, %struct.procdata** %58, align 8
  store %struct.procdata* %59, %struct.procdata** %6, align 8
  br label %60

60:                                               ; preds = %56, %53
  br label %61

61:                                               ; preds = %60, %28
  %62 = load %struct.procdata*, %struct.procdata** %6, align 8
  %63 = icmp ne %struct.procdata* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.procdata*, %struct.procdata** %6, align 8
  %66 = getelementptr inbounds %struct.procdata, %struct.procdata* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %73, %69
  %71 = load %struct.log_data*, %struct.log_data** %5, align 8
  %72 = icmp ne %struct.log_data* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.log_data*, %struct.log_data** %5, align 8
  %75 = getelementptr inbounds %struct.log_data, %struct.log_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.log_data*, %struct.log_data** %5, align 8
  %79 = getelementptr inbounds %struct.log_data, %struct.log_data* %78, i32 0, i32 0
  %80 = load %struct.log_data*, %struct.log_data** %79, align 8
  store %struct.log_data* %80, %struct.log_data** %5, align 8
  br label %70

81:                                               ; preds = %70
  %82 = load %struct.procdata*, %struct.procdata** %6, align 8
  %83 = icmp ne %struct.procdata* %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load %struct.procdata*, %struct.procdata** %6, align 8
  %86 = getelementptr inbounds %struct.procdata, %struct.procdata* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %95, %89
  %91 = load %struct.procdata*, %struct.procdata** %6, align 8
  %92 = getelementptr inbounds %struct.procdata, %struct.procdata* %91, i32 0, i32 2
  %93 = load %struct.log_data*, %struct.log_data** %92, align 8
  %94 = icmp ne %struct.log_data* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.procdata*, %struct.procdata** %6, align 8
  %97 = getelementptr inbounds %struct.procdata, %struct.procdata* %96, i32 0, i32 2
  %98 = load %struct.log_data*, %struct.log_data** %97, align 8
  store %struct.log_data* %98, %struct.log_data** %5, align 8
  %99 = load %struct.procdata*, %struct.procdata** %6, align 8
  %100 = getelementptr inbounds %struct.procdata, %struct.procdata* %99, i32 0, i32 2
  %101 = load %struct.log_data*, %struct.log_data** %100, align 8
  %102 = getelementptr inbounds %struct.log_data, %struct.log_data* %101, i32 0, i32 0
  %103 = load %struct.log_data*, %struct.log_data** %102, align 8
  %104 = load %struct.procdata*, %struct.procdata** %6, align 8
  %105 = getelementptr inbounds %struct.procdata, %struct.procdata* %104, i32 0, i32 2
  store %struct.log_data* %103, %struct.log_data** %105, align 8
  %106 = load %struct.log_data*, %struct.log_data** %5, align 8
  %107 = call i32 @kfree(%struct.log_data* %106)
  br label %90

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %84
  br label %110

110:                                              ; preds = %109, %81
  br label %111

111:                                              ; preds = %110, %19
  %112 = call i32 (...) @unlock_kernel()
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @PDE(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.log_data*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
