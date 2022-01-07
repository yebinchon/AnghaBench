; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_pg_init_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-mpath.c_pg_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { %struct.priority_group* }
%struct.priority_group = type { i64, %struct.multipath* }
%struct.multipath = type { i32, i32, i32, i32, i64, i32, i64, i32*, %struct.pgpath*, i32 }

@.str = private unnamed_addr constant [60 x i8] c"Could not failover the device: Handler scsi_dh_%s Error %d.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not failover device. Error %d.\00", align 1
@kmultipathd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pg_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_init_done(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pgpath*, align 8
  %6 = alloca %struct.priority_group*, align 8
  %7 = alloca %struct.multipath*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.pgpath*
  store %struct.pgpath* %11, %struct.pgpath** %5, align 8
  %12 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %13 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %12, i32 0, i32 0
  %14 = load %struct.priority_group*, %struct.priority_group** %13, align 8
  store %struct.priority_group* %14, %struct.priority_group** %6, align 8
  %15 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %16 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %15, i32 0, i32 1
  %17 = load %struct.multipath*, %struct.multipath** %16, align 8
  store %struct.multipath* %17, %struct.multipath** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %48 [
    i32 130, label %19
    i32 131, label %20
    i32 133, label %34
    i32 128, label %38
    i32 132, label %39
    i32 129, label %39
  ]

19:                                               ; preds = %2
  br label %51

20:                                               ; preds = %2
  %21 = load %struct.multipath*, %struct.multipath** %7, align 8
  %22 = getelementptr inbounds %struct.multipath, %struct.multipath* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %51

26:                                               ; preds = %20
  %27 = load %struct.multipath*, %struct.multipath** %7, align 8
  %28 = getelementptr inbounds %struct.multipath, %struct.multipath* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %33 = call i32 @fail_path(%struct.pgpath* %32)
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.multipath*, %struct.multipath** %7, align 8
  %36 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %37 = call i32 @bypass_pg(%struct.multipath* %35, %struct.priority_group* %36, i32 1)
  br label %51

38:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %2, %2, %38
  %40 = load %struct.multipath*, %struct.multipath** %7, align 8
  %41 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %42 = call i32 @pg_init_limit_reached(%struct.multipath* %40, %struct.pgpath* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %46 = call i32 @fail_path(%struct.pgpath* %45)
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %4, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %50 = call i32 @fail_path(%struct.pgpath* %49)
  br label %51

51:                                               ; preds = %48, %47, %34, %26, %25, %19
  %52 = load %struct.multipath*, %struct.multipath** %7, align 8
  %53 = getelementptr inbounds %struct.multipath, %struct.multipath* %52, i32 0, i32 1
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.pgpath*, %struct.pgpath** %5, align 8
  %60 = load %struct.multipath*, %struct.multipath** %7, align 8
  %61 = getelementptr inbounds %struct.multipath, %struct.multipath* %60, i32 0, i32 8
  %62 = load %struct.pgpath*, %struct.pgpath** %61, align 8
  %63 = icmp eq %struct.pgpath* %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i8*, i32, ...) @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.multipath*, %struct.multipath** %7, align 8
  %68 = getelementptr inbounds %struct.multipath, %struct.multipath* %67, i32 0, i32 8
  store %struct.pgpath* null, %struct.pgpath** %68, align 8
  %69 = load %struct.multipath*, %struct.multipath** %7, align 8
  %70 = getelementptr inbounds %struct.multipath, %struct.multipath* %69, i32 0, i32 7
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %58
  br label %81

72:                                               ; preds = %51
  %73 = load %struct.multipath*, %struct.multipath** %7, align 8
  %74 = getelementptr inbounds %struct.multipath, %struct.multipath* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.priority_group*, %struct.priority_group** %6, align 8
  %79 = getelementptr inbounds %struct.priority_group, %struct.priority_group* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %71
  %82 = load %struct.multipath*, %struct.multipath** %7, align 8
  %83 = getelementptr inbounds %struct.multipath, %struct.multipath* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %107

88:                                               ; preds = %81
  %89 = load %struct.multipath*, %struct.multipath** %7, align 8
  %90 = getelementptr inbounds %struct.multipath, %struct.multipath* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load %struct.multipath*, %struct.multipath** %7, align 8
  %95 = getelementptr inbounds %struct.multipath, %struct.multipath* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.multipath*, %struct.multipath** %7, align 8
  %99 = getelementptr inbounds %struct.multipath, %struct.multipath* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @kmultipathd, align 4
  %101 = load %struct.multipath*, %struct.multipath** %7, align 8
  %102 = getelementptr inbounds %struct.multipath, %struct.multipath* %101, i32 0, i32 3
  %103 = call i32 @queue_work(i32 %100, i32* %102)
  %104 = load %struct.multipath*, %struct.multipath** %7, align 8
  %105 = getelementptr inbounds %struct.multipath, %struct.multipath* %104, i32 0, i32 2
  %106 = call i32 @wake_up(i32* %105)
  br label %107

107:                                              ; preds = %96, %87
  %108 = load %struct.multipath*, %struct.multipath** %7, align 8
  %109 = getelementptr inbounds %struct.multipath, %struct.multipath* %108, i32 0, i32 1
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  ret void
}

declare dso_local i32 @DMERR(i8*, i32, ...) #1

declare dso_local i32 @fail_path(%struct.pgpath*) #1

declare dso_local i32 @bypass_pg(%struct.multipath*, %struct.priority_group*, i32) #1

declare dso_local i32 @pg_init_limit_reached(%struct.multipath*, %struct.pgpath*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
