; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_proc.c_pnpbios_interface_attach_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_proc.c_pnpbios_interface_attach_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_bios_node = type { i32 }
%struct.proc_dir_entry = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@proc_pnp = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@pnpbios_dont_use_current_config = common dso_local global i32 0, align 4
@proc_read_node = common dso_local global i8* null, align 8
@proc_write_node = common dso_local global i8* null, align 8
@proc_pnp_boot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnpbios_interface_attach_device(%struct.pnp_bios_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_bios_node*, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.proc_dir_entry*, align 8
  store %struct.pnp_bios_node* %0, %struct.pnp_bios_node** %3, align 8
  %6 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %7 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %3, align 8
  %8 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @proc_pnp, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i32, i32* @pnpbios_dont_use_current_config, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* @proc_pnp, align 4
  %22 = call %struct.proc_dir_entry* @create_proc_entry(i8* %20, i32 0, i32 %21)
  store %struct.proc_dir_entry* %22, %struct.proc_dir_entry** %5, align 8
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %24 = icmp ne %struct.proc_dir_entry* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i8*, i8** @proc_read_node, align 8
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %28 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @proc_write_node, align 8
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %3, align 8
  %33 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %38 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %25, %19
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* @proc_pnp_boot, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %40
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %4, i64 0, i64 0
  %48 = load i32, i32* @proc_pnp_boot, align 4
  %49 = call %struct.proc_dir_entry* @create_proc_entry(i8* %47, i32 0, i32 %48)
  store %struct.proc_dir_entry* %49, %struct.proc_dir_entry** %5, align 8
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %51 = icmp ne %struct.proc_dir_entry* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i8*, i8** @proc_read_node, align 8
  %54 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %55 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i8*, i8** @proc_write_node, align 8
  %57 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %58 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %3, align 8
  %60 = getelementptr inbounds %struct.pnp_bios_node, %struct.pnp_bios_node* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 256
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %66 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  store i32 0, i32* %2, align 4
  br label %70

67:                                               ; preds = %46
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %52, %43, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_entry(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
