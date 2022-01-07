; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasproc.c_create_adapter_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_divasproc.c_create_adapter_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.proc_dir_entry = type { %struct.TYPE_3__*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@adapter_dir_name = common dso_local global i8* null, align 8
@proc_net_eicon = common dso_local global i32 0, align 4
@info_proc_name = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@info_write = common dso_local global i32 0, align 4
@info_read = common dso_local global i32 0, align 4
@grp_opt_proc_name = common dso_local global i32 0, align 4
@write_grp_opt = common dso_local global i32 0, align 4
@read_grp_opt = common dso_local global i32 0, align 4
@d_l1_down_proc_name = common dso_local global i32 0, align 4
@write_d_l1_down = common dso_local global i32 0, align 4
@read_d_l1_down = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"proc entry %s created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_adapter_proc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %8 = load i8*, i8** @adapter_dir_name, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %11)
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* @proc_net_eicon, align 4
  %15 = call %struct.proc_dir_entry* @proc_mkdir(i8* %13, i32 %14)
  store %struct.proc_dir_entry* %15, %struct.proc_dir_entry** %4, align 8
  %16 = icmp ne %struct.proc_dir_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

18:                                               ; preds = %1
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %20 = bitcast %struct.proc_dir_entry* %19 to i8*
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @info_proc_name, align 4
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = load i32, i32* @S_IRUGO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @S_IWUSR, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %30 = call %struct.proc_dir_entry* @create_proc_entry(i32 %23, i32 %28, %struct.proc_dir_entry* %29)
  store %struct.proc_dir_entry* %30, %struct.proc_dir_entry** %5, align 8
  %31 = icmp ne %struct.proc_dir_entry* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %97

33:                                               ; preds = %18
  %34 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %35 = bitcast %struct.proc_dir_entry* %34 to i8*
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @info_write, align 4
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %40 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @info_read, align 4
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %43 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %46 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %45, i32 0, i32 0
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %46, align 8
  %47 = load i32, i32* @grp_opt_proc_name, align 4
  %48 = load i32, i32* @S_IFREG, align 4
  %49 = load i32, i32* @S_IRUGO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @S_IWUSR, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %54 = call %struct.proc_dir_entry* @create_proc_entry(i32 %47, i32 %52, %struct.proc_dir_entry* %53)
  store %struct.proc_dir_entry* %54, %struct.proc_dir_entry** %5, align 8
  %55 = icmp ne %struct.proc_dir_entry* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %33
  %57 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %58 = bitcast %struct.proc_dir_entry* %57 to i8*
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @write_grp_opt, align 4
  %62 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %63 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @read_grp_opt, align 4
  %65 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %66 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %69 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %68, i32 0, i32 0
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %69, align 8
  br label %70

70:                                               ; preds = %56, %33
  %71 = load i32, i32* @d_l1_down_proc_name, align 4
  %72 = load i32, i32* @S_IFREG, align 4
  %73 = load i32, i32* @S_IRUGO, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @S_IWUSR, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  %78 = call %struct.proc_dir_entry* @create_proc_entry(i32 %71, i32 %76, %struct.proc_dir_entry* %77)
  store %struct.proc_dir_entry* %78, %struct.proc_dir_entry** %5, align 8
  %79 = icmp ne %struct.proc_dir_entry* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %70
  %81 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %82 = bitcast %struct.proc_dir_entry* %81 to i8*
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @write_d_l1_down, align 4
  %86 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %87 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @read_d_l1_down, align 4
  %89 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %90 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %93 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %92, i32 0, i32 0
  store %struct.TYPE_3__* %91, %struct.TYPE_3__** %93, align 8
  br label %94

94:                                               ; preds = %80, %70
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %96 = call i32 @DBG_TRC(i8* %95)
  store i32 1, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %32, %17
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, i32) #1

declare dso_local %struct.proc_dir_entry* @create_proc_entry(i32, i32, %struct.proc_dir_entry*) #1

declare dso_local i32 @DBG_TRC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
