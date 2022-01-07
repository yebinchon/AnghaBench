; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_new_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OF_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (i8*, %struct.device_node*)* @new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @new_node(i8* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.device_node* @kzalloc(i32 12, i32 %7)
  store %struct.device_node* %8, %struct.device_node** %6, align 8
  %9 = load %struct.device_node*, %struct.device_node** %6, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %44

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @kmalloc(i64 %15, i32 %16)
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i32 @kfree(%struct.device_node* %25)
  store %struct.device_node* null, %struct.device_node** %3, align 8
  br label %44

27:                                               ; preds = %12
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcpy(i32 %30, i8* %31)
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = load i32, i32* @OF_DYNAMIC, align 4
  %35 = call i32 @of_node_set_flag(%struct.device_node* %33, i32 %34)
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = getelementptr inbounds %struct.device_node, %struct.device_node* %36, i32 0, i32 1
  %38 = call i32 @kref_init(i32* %37)
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i32 @of_node_get(%struct.device_node* %39)
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = getelementptr inbounds %struct.device_node, %struct.device_node* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  store %struct.device_node* %43, %struct.device_node** %3, align 8
  br label %44

44:                                               ; preds = %27, %24, %11
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  ret %struct.device_node* %45
}

declare dso_local %struct.device_node* @kzalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kfree(%struct.device_node*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @of_node_set_flag(%struct.device_node*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
