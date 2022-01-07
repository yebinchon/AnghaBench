; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i8* }
%struct.agp_file_private = type { i32, i32 }
%struct.agp_client = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AGPGART_MINOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AGP_FF_ALLOW_CLIENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_3__* null, align 8
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@AGP_FF_ALLOW_CONTROLLER = common dso_local global i32 0, align 4
@AGP_FF_IS_CLIENT = common dso_local global i32 0, align 4
@AGP_FF_IS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"private=%p, client=%p\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @agp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.agp_file_private*, align 8
  %8 = alloca %struct.agp_client*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = call i32 (...) @lock_kernel()
  %15 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0))
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @AGPGART_MINOR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %75

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.agp_file_private* @kzalloc(i32 8, i32 %21)
  store %struct.agp_file_private* %22, %struct.agp_file_private** %7, align 8
  %23 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %24 = icmp eq %struct.agp_file_private* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %72

26:                                               ; preds = %20
  %27 = load i32, i32* @AGP_FF_ALLOW_CLIENT, align 4
  %28 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %29 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %35 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %37 = call i64 @capable(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %26
  %40 = load i32, i32* @AGP_FF_ALLOW_CONTROLLER, align 4
  %41 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %42 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %26
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.agp_client* @agp_find_client_by_pid(i32 %47)
  store %struct.agp_client* %48, %struct.agp_client** %8, align 8
  %49 = load %struct.agp_client*, %struct.agp_client** %8, align 8
  %50 = icmp ne %struct.agp_client* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32, i32* @AGP_FF_IS_CLIENT, align 4
  %53 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %54 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %53, i32 0, i32 0
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %57 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %58 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %62 = bitcast %struct.agp_file_private* %61 to i8*
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %66 = call i32 @agp_insert_file_private(%struct.agp_file_private* %65)
  %67 = load %struct.agp_file_private*, %struct.agp_file_private** %7, align 8
  %68 = load %struct.agp_client*, %struct.agp_client** %8, align 8
  %69 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.agp_file_private* %67, %struct.agp_client* %68)
  %70 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0))
  %71 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %79

72:                                               ; preds = %25
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %19
  %76 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0))
  %77 = call i32 (...) @unlock_kernel()
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %60
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.agp_file_private* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local %struct.agp_client* @agp_find_client_by_pid(i32) #1

declare dso_local i32 @agp_insert_file_private(%struct.agp_file_private*) #1

declare dso_local i32 @DBG(i8*, %struct.agp_file_private*, %struct.agp_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
