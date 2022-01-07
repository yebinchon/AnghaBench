; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_debugfs.c_xen_debugfs_create_u32_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_debugfs.c_xen_debugfs_create_u32_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.array_data = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@u32_array_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @xen_debugfs_create_u32_array(i8* %0, i32 %1, %struct.dentry* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.array_data*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.array_data* @kmalloc(i32 16, i32 %13)
  store %struct.array_data* %14, %struct.array_data** %12, align 8
  %15 = load %struct.array_data*, %struct.array_data** %12, align 8
  %16 = icmp eq %struct.array_data* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %30

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = load %struct.array_data*, %struct.array_data** %12, align 8
  %21 = getelementptr inbounds %struct.array_data, %struct.array_data* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.array_data*, %struct.array_data** %12, align 8
  %24 = getelementptr inbounds %struct.array_data, %struct.array_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.dentry*, %struct.dentry** %9, align 8
  %28 = load %struct.array_data*, %struct.array_data** %12, align 8
  %29 = call %struct.dentry* @debugfs_create_file(i8* %25, i32 %26, %struct.dentry* %27, %struct.array_data* %28, i32* @u32_array_fops)
  store %struct.dentry* %29, %struct.dentry** %6, align 8
  br label %30

30:                                               ; preds = %18, %17
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %31
}

declare dso_local %struct.array_data* @kmalloc(i32, i32) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.array_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
