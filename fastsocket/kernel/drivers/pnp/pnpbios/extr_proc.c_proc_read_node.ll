; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_proc.c_proc_read_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_proc.c_proc_read_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pnp_bios_node = type { i32, i32 }

@node_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_read_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_read_node(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pnp_bios_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = ashr i64 %19, 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %16, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_info, i32 0, i32 0), align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pnp_bios_node* @kzalloc(i32 %24, i32 %25)
  store %struct.pnp_bios_node* %26, %struct.pnp_bios_node** %14, align 8
  %27 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %14, align 8
  %28 = icmp ne %struct.pnp_bios_node* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %58

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %14, align 8
  %35 = call i64 @pnp_bios_get_dev_node(i64* %16, i32 %33, %struct.pnp_bios_node* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %14, align 8
  %39 = call i32 @kfree(%struct.pnp_bios_node* %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %14, align 8
  %44 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %14, align 8
  %51 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @memcpy(i8* %49, i32 %52, i32 %53)
  %55 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %14, align 8
  %56 = call i32 @kfree(%struct.pnp_bios_node* %55)
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %42, %37, %29
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.pnp_bios_node* @kzalloc(i32, i32) #1

declare dso_local i64 @pnp_bios_get_dev_node(i64*, i32, %struct.pnp_bios_node*) #1

declare dso_local i32 @kfree(%struct.pnp_bios_node*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
