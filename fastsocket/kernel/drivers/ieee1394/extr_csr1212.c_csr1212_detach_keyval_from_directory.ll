; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_detach_keyval_from_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_detach_keyval_from_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.csr1212_dentry*, %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { %struct.csr1212_dentry*, %struct.csr1212_dentry* }
%struct.TYPE_4__ = type { i64 }

@CSR1212_KV_TYPE_DIRECTORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csr1212_detach_keyval_from_directory(%struct.csr1212_keyval* %0, %struct.csr1212_keyval* %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca %struct.csr1212_dentry*, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %3, align 8
  store %struct.csr1212_keyval* %1, %struct.csr1212_keyval** %4, align 8
  %6 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %7 = icmp ne %struct.csr1212_keyval* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %10 = icmp ne %struct.csr1212_keyval* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %13 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CSR1212_KV_TYPE_DIRECTORY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %8, %2
  br label %89

19:                                               ; preds = %11
  %20 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %21 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %22 = call %struct.csr1212_dentry* @csr1212_find_keyval(%struct.csr1212_keyval* %20, %struct.csr1212_keyval* %21)
  store %struct.csr1212_dentry* %22, %struct.csr1212_dentry** %5, align 8
  %23 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %24 = icmp ne %struct.csr1212_dentry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %89

26:                                               ; preds = %19
  %27 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %28 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %27, i32 0, i32 0
  %29 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %28, align 8
  %30 = icmp ne %struct.csr1212_dentry* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %33 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %32, i32 0, i32 1
  %34 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %33, align 8
  %35 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %36 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %35, i32 0, i32 0
  %37 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %36, align 8
  %38 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %37, i32 0, i32 1
  store %struct.csr1212_dentry* %34, %struct.csr1212_dentry** %38, align 8
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %41 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %40, i32 0, i32 1
  %42 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %41, align 8
  %43 = icmp ne %struct.csr1212_dentry* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %46 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %45, i32 0, i32 0
  %47 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %46, align 8
  %48 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %49 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %48, i32 0, i32 1
  %50 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %49, align 8
  %51 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %50, i32 0, i32 0
  store %struct.csr1212_dentry* %47, %struct.csr1212_dentry** %51, align 8
  br label %52

52:                                               ; preds = %44, %39
  %53 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %54 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %56, align 8
  %58 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %59 = icmp eq %struct.csr1212_dentry* %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %62 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %61, i32 0, i32 1
  %63 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %62, align 8
  %64 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %65 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store %struct.csr1212_dentry* %63, %struct.csr1212_dentry** %67, align 8
  br label %68

68:                                               ; preds = %60, %52
  %69 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %70 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %72, align 8
  %74 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %75 = icmp eq %struct.csr1212_dentry* %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %78 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %77, i32 0, i32 0
  %79 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %78, align 8
  %80 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %81 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store %struct.csr1212_dentry* %79, %struct.csr1212_dentry** %83, align 8
  br label %84

84:                                               ; preds = %76, %68
  %85 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %5, align 8
  %86 = call i32 @CSR1212_FREE(%struct.csr1212_dentry* %85)
  %87 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %88 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %87)
  br label %89

89:                                               ; preds = %84, %25, %18
  ret void
}

declare dso_local %struct.csr1212_dentry* @csr1212_find_keyval(%struct.csr1212_keyval*, %struct.csr1212_keyval*) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_dentry*) #1

declare dso_local i32 @csr1212_release_keyval(%struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
