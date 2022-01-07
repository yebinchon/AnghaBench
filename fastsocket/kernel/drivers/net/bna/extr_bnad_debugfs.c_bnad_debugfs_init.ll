; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_debugfs.c_bnad_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_debugfs.c_bnad_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad_debugfs_entry = type { i32, i32, i32 }
%struct.bnad = type { i32, i32*, i8* }

@bna_debugfs_root = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"bna\00", align 1
@bna_debugfs_port_count = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"BNA: debugfs root dir creation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"pci_dev:%s\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"bna pci_dev %s: root dir creation failed\0A\00", align 1
@bnad_debugfs_files = common dso_local global %struct.bnad_debugfs_entry* null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"BNA pci_dev:%s: create %s entry failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnad_debugfs_init(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca %struct.bnad_debugfs_entry*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %6 = load i32*, i32** @bna_debugfs_root, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** @bna_debugfs_root, align 8
  %11 = call i32 @atomic_set(i32* @bna_debugfs_port_count, i32 0)
  %12 = load i32*, i32** @bna_debugfs_root, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %98

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %19 = load %struct.bnad*, %struct.bnad** %2, align 8
  %20 = getelementptr inbounds %struct.bnad, %struct.bnad* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @pci_name(i32 %21)
  %23 = call i32 @snprintf(i8* %18, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load %struct.bnad*, %struct.bnad** %2, align 8
  %25 = getelementptr inbounds %struct.bnad, %struct.bnad* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %98, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %30 = load i32*, i32** @bna_debugfs_root, align 8
  %31 = call i8* @debugfs_create_dir(i8* %29, i32* %30)
  %32 = load %struct.bnad*, %struct.bnad** %2, align 8
  %33 = getelementptr inbounds %struct.bnad, %struct.bnad* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bnad*, %struct.bnad** %2, align 8
  %35 = getelementptr inbounds %struct.bnad, %struct.bnad* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load %struct.bnad*, %struct.bnad** %2, align 8
  %40 = getelementptr inbounds %struct.bnad, %struct.bnad* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @pci_name(i32 %41)
  %43 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  br label %98

44:                                               ; preds = %28
  %45 = call i32 @atomic_inc(i32* @bna_debugfs_port_count)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %94, %44
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** @bnad_debugfs_files, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.bnad_debugfs_entry* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %46
  %52 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** @bnad_debugfs_files, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %52, i64 %54
  store %struct.bnad_debugfs_entry* %55, %struct.bnad_debugfs_entry** %3, align 8
  %56 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %57 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %60 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bnad*, %struct.bnad** %2, align 8
  %63 = getelementptr inbounds %struct.bnad, %struct.bnad* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.bnad*, %struct.bnad** %2, align 8
  %66 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %67 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @debugfs_create_file(i32 %58, i32 %61, i8* %64, %struct.bnad* %65, i32 %68)
  %70 = load %struct.bnad*, %struct.bnad** %2, align 8
  %71 = getelementptr inbounds %struct.bnad, %struct.bnad* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load %struct.bnad*, %struct.bnad** %2, align 8
  %77 = getelementptr inbounds %struct.bnad, %struct.bnad* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %51
  %85 = load %struct.bnad*, %struct.bnad** %2, align 8
  %86 = getelementptr inbounds %struct.bnad, %struct.bnad* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @pci_name(i32 %87)
  %89 = load %struct.bnad_debugfs_entry*, %struct.bnad_debugfs_entry** %3, align 8
  %90 = getelementptr inbounds %struct.bnad_debugfs_entry, %struct.bnad_debugfs_entry* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %88, i32 %91)
  br label %98

93:                                               ; preds = %51
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %46

97:                                               ; preds = %46
  br label %98

98:                                               ; preds = %14, %38, %84, %97, %17
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnad_debugfs_entry*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i8*, %struct.bnad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
