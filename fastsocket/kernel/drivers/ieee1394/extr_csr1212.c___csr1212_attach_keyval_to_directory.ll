; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c___csr1212_attach_keyval_to_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c___csr1212_attach_keyval_to_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.csr1212_dentry*, %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { %struct.csr1212_dentry*, %struct.csr1212_dentry*, %struct.csr1212_keyval* }
%struct.TYPE_4__ = type { i64 }

@CSR1212_KV_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_keyval*, %struct.csr1212_keyval*, i32)* @__csr1212_attach_keyval_to_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__csr1212_attach_keyval_to_directory(%struct.csr1212_keyval* %0, %struct.csr1212_keyval* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.csr1212_keyval*, align 8
  %6 = alloca %struct.csr1212_keyval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csr1212_dentry*, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %5, align 8
  store %struct.csr1212_keyval* %1, %struct.csr1212_keyval** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %10 = icmp ne %struct.csr1212_keyval* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %13 = icmp ne %struct.csr1212_keyval* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %16 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CSR1212_KV_TYPE_DIRECTORY, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %14, %11, %3
  %22 = phi i1 [ true, %11 ], [ true, %3 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = call %struct.csr1212_dentry* @CSR1212_MALLOC(i32 24)
  store %struct.csr1212_dentry* %25, %struct.csr1212_dentry** %8, align 8
  %26 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %27 = icmp ne %struct.csr1212_dentry* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %84

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %36 = call i32 @csr1212_keep_keyval(%struct.csr1212_keyval* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %6, align 8
  %39 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %40 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %39, i32 0, i32 2
  store %struct.csr1212_keyval* %38, %struct.csr1212_keyval** %40, align 8
  %41 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %42 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %41, i32 0, i32 0
  store %struct.csr1212_dentry* null, %struct.csr1212_dentry** %42, align 8
  %43 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %44 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %46, align 8
  %48 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %49 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %48, i32 0, i32 1
  store %struct.csr1212_dentry* %47, %struct.csr1212_dentry** %49, align 8
  %50 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %51 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %53, align 8
  %55 = icmp ne %struct.csr1212_dentry* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %37
  %57 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %58 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %59 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store %struct.csr1212_dentry* %57, %struct.csr1212_dentry** %61, align 8
  br label %62

62:                                               ; preds = %56, %37
  %63 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %64 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %66, align 8
  %68 = icmp ne %struct.csr1212_dentry* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %71 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %72 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %74, align 8
  %76 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %75, i32 0, i32 0
  store %struct.csr1212_dentry* %70, %struct.csr1212_dentry** %76, align 8
  br label %77

77:                                               ; preds = %69, %62
  %78 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %8, align 8
  %79 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %5, align 8
  %80 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store %struct.csr1212_dentry* %78, %struct.csr1212_dentry** %82, align 8
  %83 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %77, %28
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.csr1212_dentry* @CSR1212_MALLOC(i32) #1

declare dso_local i32 @csr1212_keep_keyval(%struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
