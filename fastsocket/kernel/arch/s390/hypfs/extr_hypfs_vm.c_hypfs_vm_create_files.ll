; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_vm.c_hypfs_vm_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_hypfs_vm.c_hypfs_vm_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.diag2fc_data = type { i32 }

@guest_query = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hyp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"z/VM Hypervisor\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpus\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"systems\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hypfs_vm_create_files(%struct.super_block* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.diag2fc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @guest_query, align 4
  %13 = call %struct.diag2fc_data* @diag2fc_store(i32 %12, i32* %9, i32 0)
  store %struct.diag2fc_data* %13, %struct.diag2fc_data** %8, align 8
  %14 = load %struct.diag2fc_data*, %struct.diag2fc_data** %8, align 8
  %15 = call i64 @IS_ERR(%struct.diag2fc_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.diag2fc_data*, %struct.diag2fc_data** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.diag2fc_data* %18)
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = bitcast %struct.dentry* %22 to %struct.diag2fc_data*
  %24 = call %struct.diag2fc_data* @hypfs_mkdir(%struct.super_block* %21, %struct.diag2fc_data* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = bitcast %struct.diag2fc_data* %24 to %struct.dentry*
  store %struct.dentry* %25, %struct.dentry** %6, align 8
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = bitcast %struct.dentry* %26 to %struct.diag2fc_data*
  %28 = call i64 @IS_ERR(%struct.diag2fc_data* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = bitcast %struct.dentry* %31 to %struct.diag2fc_data*
  %33 = call i32 @PTR_ERR(%struct.diag2fc_data* %32)
  store i32 %33, i32* %10, align 4
  br label %117

34:                                               ; preds = %20
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = bitcast %struct.dentry* %36 to %struct.diag2fc_data*
  %38 = call %struct.diag2fc_data* @hypfs_create_str(%struct.super_block* %35, %struct.diag2fc_data* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %39 = bitcast %struct.diag2fc_data* %38 to %struct.dentry*
  store %struct.dentry* %39, %struct.dentry** %7, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = bitcast %struct.dentry* %40 to %struct.diag2fc_data*
  %42 = call i64 @IS_ERR(%struct.diag2fc_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = bitcast %struct.dentry* %45 to %struct.diag2fc_data*
  %47 = call i32 @PTR_ERR(%struct.diag2fc_data* %46)
  store i32 %47, i32* %10, align 4
  br label %117

48:                                               ; preds = %34
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = bitcast %struct.dentry* %50 to %struct.diag2fc_data*
  %52 = call %struct.diag2fc_data* @hypfs_mkdir(%struct.super_block* %49, %struct.diag2fc_data* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %53 = bitcast %struct.diag2fc_data* %52 to %struct.dentry*
  store %struct.dentry* %53, %struct.dentry** %6, align 8
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = bitcast %struct.dentry* %54 to %struct.diag2fc_data*
  %56 = call i64 @IS_ERR(%struct.diag2fc_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = bitcast %struct.dentry* %59 to %struct.diag2fc_data*
  %61 = call i32 @PTR_ERR(%struct.diag2fc_data* %60)
  store i32 %61, i32* %10, align 4
  br label %117

62:                                               ; preds = %48
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = bitcast %struct.dentry* %64 to %struct.diag2fc_data*
  %66 = load %struct.diag2fc_data*, %struct.diag2fc_data** %8, align 8
  %67 = getelementptr inbounds %struct.diag2fc_data, %struct.diag2fc_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.diag2fc_data* @hypfs_create_u64(%struct.super_block* %63, %struct.diag2fc_data* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = bitcast %struct.diag2fc_data* %69 to %struct.dentry*
  store %struct.dentry* %70, %struct.dentry** %7, align 8
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = bitcast %struct.dentry* %71 to %struct.diag2fc_data*
  %73 = call i64 @IS_ERR(%struct.diag2fc_data* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.dentry*, %struct.dentry** %7, align 8
  %77 = bitcast %struct.dentry* %76 to %struct.diag2fc_data*
  %78 = call i32 @PTR_ERR(%struct.diag2fc_data* %77)
  store i32 %78, i32* %10, align 4
  br label %117

79:                                               ; preds = %62
  %80 = load %struct.super_block*, %struct.super_block** %4, align 8
  %81 = load %struct.dentry*, %struct.dentry** %5, align 8
  %82 = bitcast %struct.dentry* %81 to %struct.diag2fc_data*
  %83 = call %struct.diag2fc_data* @hypfs_mkdir(%struct.super_block* %80, %struct.diag2fc_data* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %84 = bitcast %struct.diag2fc_data* %83 to %struct.dentry*
  store %struct.dentry* %84, %struct.dentry** %6, align 8
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = bitcast %struct.dentry* %85 to %struct.diag2fc_data*
  %87 = call i64 @IS_ERR(%struct.diag2fc_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load %struct.dentry*, %struct.dentry** %6, align 8
  %91 = bitcast %struct.dentry* %90 to %struct.diag2fc_data*
  %92 = call i32 @PTR_ERR(%struct.diag2fc_data* %91)
  store i32 %92, i32* %10, align 4
  br label %117

93:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %111, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = load %struct.dentry*, %struct.dentry** %6, align 8
  %101 = bitcast %struct.dentry* %100 to %struct.diag2fc_data*
  %102 = load %struct.diag2fc_data*, %struct.diag2fc_data** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.diag2fc_data, %struct.diag2fc_data* %102, i64 %104
  %106 = call i32 @hpyfs_vm_create_guest(%struct.super_block* %99, %struct.diag2fc_data* %101, %struct.diag2fc_data* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %117

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %94

114:                                              ; preds = %94
  %115 = load %struct.diag2fc_data*, %struct.diag2fc_data** %8, align 8
  %116 = call i32 @diag2fc_free(%struct.diag2fc_data* %115)
  store i32 0, i32* %3, align 4
  br label %121

117:                                              ; preds = %109, %89, %75, %58, %44, %30
  %118 = load %struct.diag2fc_data*, %struct.diag2fc_data** %8, align 8
  %119 = call i32 @diag2fc_free(%struct.diag2fc_data* %118)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %114, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.diag2fc_data* @diag2fc_store(i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.diag2fc_data*) #1

declare dso_local i32 @PTR_ERR(%struct.diag2fc_data*) #1

declare dso_local %struct.diag2fc_data* @hypfs_mkdir(%struct.super_block*, %struct.diag2fc_data*, i8*) #1

declare dso_local %struct.diag2fc_data* @hypfs_create_str(%struct.super_block*, %struct.diag2fc_data*, i8*, i8*) #1

declare dso_local %struct.diag2fc_data* @hypfs_create_u64(%struct.super_block*, %struct.diag2fc_data*, i8*, i32) #1

declare dso_local i32 @hpyfs_vm_create_guest(%struct.super_block*, %struct.diag2fc_data*, %struct.diag2fc_data*) #1

declare dso_local i32 @diag2fc_free(%struct.diag2fc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
