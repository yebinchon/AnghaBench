; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_vio_create_viodasd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_vio.c_vio_create_viodasd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"/vdevice\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"viodasd\00", align 1
@FIRST_VIODASD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"IBM,iSeries-viodasd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vio_dev* @vio_create_viodasd(i64 %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.vio_dev*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.vio_dev* null, %struct.vio_dev** %6, align 8
  %7 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.vio_dev* null, %struct.vio_dev** %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = load i64, i64* @FIRST_VIODASD, align 8
  %14 = load i64, i64* %3, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.device_node* @do_device_node(%struct.device_node* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %15, i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call i32 @of_node_put(%struct.device_node* %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call %struct.vio_dev* @vio_register_device_node(%struct.device_node* %23)
  store %struct.vio_dev* %24, %struct.vio_dev** %6, align 8
  %25 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %26 = icmp ne %struct.vio_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @free_node(%struct.device_node* %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %11
  %32 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  store %struct.vio_dev* %32, %struct.vio_dev** %2, align 8
  br label %33

33:                                               ; preds = %31, %10
  %34 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  ret %struct.vio_dev* %34
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local %struct.device_node* @do_device_node(%struct.device_node*, i8*, i64, i64, i8*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.vio_dev* @vio_register_device_node(%struct.device_node*) #1

declare dso_local i32 @free_node(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
