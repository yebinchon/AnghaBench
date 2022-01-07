; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_procconf.c_hysdn_conf_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_procconf.c_hysdn_conf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.proc_dir_entry* }
%struct.proc_dir_entry = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.conf_writedata*, %struct.TYPE_5__* }
%struct.conf_writedata = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@card_root = common dso_local global %struct.TYPE_6__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@LOG_PROC_OPEN = common dso_local global i32 0, align 4
@LOG_PROC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"config close for uid=%d gid=%d mode=0x%x\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@CONF_STATE_POF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hysdn_conf_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hysdn_conf_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.conf_writedata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @card_root, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  br label %12

12:                                               ; preds = %24, %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %17, align 8
  store %struct.proc_dir_entry* %18, %struct.proc_dir_entry** %9, align 8
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %9, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.proc_dir_entry* @PDE(%struct.inode* %20)
  %22 = icmp eq %struct.proc_dir_entry* %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %6, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = call i32 (...) @unlock_kernel()
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %114

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LOG_PROC_OPEN, align 4
  %40 = load i32, i32* @LOG_PROC_ALL, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @hysdn_addlog(%struct.TYPE_6__* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %44, %35
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FMODE_READ, align 4
  %65 = load i32, i32* @FMODE_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = load i32, i32* @FMODE_WRITE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %60
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 1
  %73 = load %struct.conf_writedata*, %struct.conf_writedata** %72, align 8
  %74 = icmp ne %struct.conf_writedata* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 1
  %78 = load %struct.conf_writedata*, %struct.conf_writedata** %77, align 8
  store %struct.conf_writedata* %78, %struct.conf_writedata** %7, align 8
  %79 = load %struct.conf_writedata*, %struct.conf_writedata** %7, align 8
  %80 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CONF_STATE_POF, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.conf_writedata*, %struct.conf_writedata** %7, align 8
  %86 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pof_write_close(i32 %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %84, %75
  %90 = load %struct.file*, %struct.file** %5, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 1
  %92 = load %struct.conf_writedata*, %struct.conf_writedata** %91, align 8
  %93 = call i32 @kfree(%struct.conf_writedata* %92)
  br label %94

94:                                               ; preds = %89, %70
  br label %111

95:                                               ; preds = %60
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @FMODE_READ, align 4
  %100 = load i32, i32* @FMODE_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = load i32, i32* @FMODE_READ, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 1
  %108 = load %struct.conf_writedata*, %struct.conf_writedata** %107, align 8
  %109 = call i32 @kfree(%struct.conf_writedata* %108)
  br label %110

110:                                              ; preds = %105, %95
  br label %111

111:                                              ; preds = %110, %94
  %112 = call i32 (...) @unlock_kernel()
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %31
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @hysdn_addlog(%struct.TYPE_6__*, i8*, i32, i32, i32) #1

declare dso_local i32 @pof_write_close(i32) #1

declare dso_local i32 @kfree(%struct.conf_writedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
