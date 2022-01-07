; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_relationship.c_relationship_notify_leader_changed.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_relationship.c_relationship_notify_leader_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@g_tracker_servers = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @relationship_notify_leader_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relationship_notify_leader_changed(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @ENOENT, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 1), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 0), align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 1), align 8
  store i32* %14, i32** %4, align 8
  br label %15

15:                                               ; preds = %34, %1
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ult i32* %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @relationship_notify_next_leader(i32* %20, i32* %21, i32* %7)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %24
  br label %33

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  br label %15

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %73

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOENT, align 4
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_tracker_servers, i32 0, i32 1), align 8
  store i32* %44, i32** %4, align 8
  br label %45

45:                                               ; preds = %64, %42
  %46 = load i32*, i32** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = icmp ult i32* %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32*, i32** %4, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @relationship_commit_next_leader(i32* %50, i32* %51, i32* %7)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %73

59:                                               ; preds = %54
  br label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %59
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %4, align 8
  br label %45

67:                                               ; preds = %45
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %57, %40, %27
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @relationship_notify_next_leader(i32*, i32*, i32*) #1

declare dso_local i32 @relationship_commit_next_leader(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
