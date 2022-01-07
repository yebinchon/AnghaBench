; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_release_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_release_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.csr1212_keyval*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.csr1212_dentry*, %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { %struct.csr1212_dentry*, %struct.csr1212_dentry*, %struct.csr1212_keyval* }
%struct.TYPE_4__ = type { i64 }

@CSR1212_KV_TYPE_DIRECTORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csr1212_release_keyval(%struct.csr1212_keyval* %0) #0 {
  %2 = alloca %struct.csr1212_keyval*, align 8
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca %struct.csr1212_dentry, align 8
  %6 = alloca %struct.csr1212_dentry*, align 8
  %7 = alloca %struct.csr1212_dentry*, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %2, align 8
  %8 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %9 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %8, i32 0, i32 3
  %10 = call i32 @atomic_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %113

13:                                               ; preds = %1
  %14 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %15 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %5, i32 0, i32 2
  store %struct.csr1212_keyval* %14, %struct.csr1212_keyval** %15, align 8
  %16 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %5, i32 0, i32 1
  store %struct.csr1212_dentry* null, %struct.csr1212_dentry** %16, align 8
  %17 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %5, i32 0, i32 0
  store %struct.csr1212_dentry* null, %struct.csr1212_dentry** %17, align 8
  store %struct.csr1212_dentry* %5, %struct.csr1212_dentry** %6, align 8
  %18 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  store %struct.csr1212_dentry* %18, %struct.csr1212_dentry** %7, align 8
  br label %19

19:                                               ; preds = %112, %13
  %20 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %21 = icmp ne %struct.csr1212_dentry* %20, null
  br i1 %21, label %22, label %113

22:                                               ; preds = %19
  %23 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %24 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %23, i32 0, i32 2
  %25 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %24, align 8
  store %struct.csr1212_keyval* %25, %struct.csr1212_keyval** %3, align 8
  br label %26

26:                                               ; preds = %77, %22
  %27 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %28 = icmp ne %struct.csr1212_keyval* %27, null
  br i1 %28, label %29, label %81

29:                                               ; preds = %26
  %30 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %31 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %2, align 8
  %32 = icmp ne %struct.csr1212_keyval* %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %35 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %34, i32 0, i32 3
  %36 = call i32 @atomic_dec_and_test(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %81

39:                                               ; preds = %33, %29
  %40 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %41 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %40, i32 0, i32 2
  %42 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %41, align 8
  store %struct.csr1212_keyval* %42, %struct.csr1212_keyval** %4, align 8
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %44 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @CSR1212_KV_TYPE_DIRECTORY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %39
  %50 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %51 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %53, align 8
  %55 = icmp ne %struct.csr1212_dentry* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %58 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %60, align 8
  %62 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %7, align 8
  %63 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %62, i32 0, i32 1
  store %struct.csr1212_dentry* %61, %struct.csr1212_dentry** %63, align 8
  %64 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %7, align 8
  %65 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %66 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %68, align 8
  %70 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %69, i32 0, i32 0
  store %struct.csr1212_dentry* %64, %struct.csr1212_dentry** %70, align 8
  %71 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %72 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %74, align 8
  store %struct.csr1212_dentry* %75, %struct.csr1212_dentry** %7, align 8
  br label %76

76:                                               ; preds = %56, %49
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %79 = call i32 @free_keyval(%struct.csr1212_keyval* %78)
  %80 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  store %struct.csr1212_keyval* %80, %struct.csr1212_keyval** %3, align 8
  br label %26

81:                                               ; preds = %38, %26
  %82 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %83 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %82, i32 0, i32 1
  %84 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %83, align 8
  store %struct.csr1212_dentry* %84, %struct.csr1212_dentry** %6, align 8
  %85 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %86 = icmp ne %struct.csr1212_dentry* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %81
  %88 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %89 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %88, i32 0, i32 0
  %90 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %89, align 8
  %91 = icmp ne %struct.csr1212_dentry* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %94 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %93, i32 0, i32 0
  %95 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %94, align 8
  %96 = icmp ne %struct.csr1212_dentry* %95, %5
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %99 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %98, i32 0, i32 0
  %100 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %99, align 8
  %101 = call i32 @CSR1212_FREE(%struct.csr1212_dentry* %100)
  br label %102

102:                                              ; preds = %97, %92, %87
  %103 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %6, align 8
  %104 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %103, i32 0, i32 0
  store %struct.csr1212_dentry* null, %struct.csr1212_dentry** %104, align 8
  br label %112

105:                                              ; preds = %81
  %106 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %7, align 8
  %107 = icmp ne %struct.csr1212_dentry* %106, %5
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %7, align 8
  %110 = call i32 @CSR1212_FREE(%struct.csr1212_dentry* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %102
  br label %19

113:                                              ; preds = %12, %19
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @free_keyval(%struct.csr1212_keyval*) #1

declare dso_local i32 @CSR1212_FREE(%struct.csr1212_dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
