; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_signal.c_sys_sigaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_signal.c_sys_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.old_sigaction = type { i32, i32, i32, i32 }
%struct.k_sigaction = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@VERIFY_READ = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VERIFY_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_sigaction(i32 %0, %struct.old_sigaction* %1, %struct.old_sigaction* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.old_sigaction*, align 8
  %7 = alloca %struct.old_sigaction*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.k_sigaction, align 8
  %10 = alloca %struct.k_sigaction, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.old_sigaction* %1, %struct.old_sigaction** %6, align 8
  store %struct.old_sigaction* %2, %struct.old_sigaction** %7, align 8
  %12 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %13 = icmp ne %struct.old_sigaction* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load i32, i32* @VERIFY_READ, align 4
  %16 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %17 = call i32 @access_ok(i32 %15, %struct.old_sigaction* %16, i32 16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %24 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %23, i32 0, i32 3
  %25 = call i32 @__get_user(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %32 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %31, i32 0, i32 2
  %33 = call i32 @__get_user(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %19, %14
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %115

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %9, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %43 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %42, i32 0, i32 1
  %44 = call i32 @__get_user(i32 %41, i32* %43)
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %47 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %46, i32 0, i32 0
  %48 = call i32 @__get_user(i32 %45, i32* %47)
  %49 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @siginitset(%struct.TYPE_4__* %50, i32 %51)
  br label %53

53:                                               ; preds = %38, %3
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.old_sigaction*, %struct.old_sigaction** %6, align 8
  %56 = icmp ne %struct.old_sigaction* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi %struct.k_sigaction* [ %9, %57 ], [ null, %58 ]
  %61 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %62 = icmp ne %struct.old_sigaction* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %65

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %63
  %66 = phi %struct.k_sigaction* [ %10, %63 ], [ null, %64 ]
  %67 = call i32 @do_sigaction(i32 %54, %struct.k_sigaction* %60, %struct.k_sigaction* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %113, label %70

70:                                               ; preds = %65
  %71 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %72 = icmp ne %struct.old_sigaction* %71, null
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = load i32, i32* @VERIFY_WRITE, align 4
  %75 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %76 = call i32 @access_ok(i32 %74, %struct.old_sigaction* %75, i32 16)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %10, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %83 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %82, i32 0, i32 3
  %84 = call i64 @__put_user(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %10, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %91 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %90, i32 0, i32 2
  %92 = call i64 @__put_user(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86, %78, %73
  %95 = load i32, i32* @EFAULT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %115

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %10, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %102 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %101, i32 0, i32 1
  %103 = call i64 @__put_user(i32 %100, i32* %102)
  %104 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %10, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.old_sigaction*, %struct.old_sigaction** %7, align 8
  %111 = getelementptr inbounds %struct.old_sigaction, %struct.old_sigaction* %110, i32 0, i32 0
  %112 = call i64 @__put_user(i32 %109, i32* %111)
  br label %113

113:                                              ; preds = %97, %70, %65
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %94, %35
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @access_ok(i32, %struct.old_sigaction*, i32) #1

declare dso_local i32 @__get_user(i32, i32*) #1

declare dso_local i32 @siginitset(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @do_sigaction(i32, %struct.k_sigaction*, %struct.k_sigaction*) #1

declare dso_local i64 @__put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
