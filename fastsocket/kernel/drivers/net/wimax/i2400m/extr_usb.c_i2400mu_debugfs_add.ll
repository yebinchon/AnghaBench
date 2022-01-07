; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_usb.c_i2400mu_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { %struct.dentry*, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.dentry = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"i2400m-usb\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dl_\00", align 1
@usb = common dso_local global i32 0, align 4
@fw = common dso_local global i32 0, align 4
@notif = common dso_local global i32 0, align 4
@rx = common dso_local global i32 0, align 4
@tx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rx_size_auto_shrink\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Can't create debugfs entry rx_size_auto_shrink: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rx_size\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Can't create debugfs entry rx_size: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2400mu*)* @i2400mu_debugfs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400mu_debugfs_add(%struct.i2400mu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2400mu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %3, align 8
  %8 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %9 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %13 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %16, %struct.dentry** %6, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %6, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.dentry* %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = call i64 @IS_ERR(%struct.dentry* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24
  br label %88

31:                                               ; preds = %1
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %34 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %33, i32 0, i32 0
  store %struct.dentry* %32, %struct.dentry** %34, align 8
  %35 = load i32, i32* @usb, align 4
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35, %struct.dentry* %36)
  %38 = load i32, i32* @fw, align 4
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %38, %struct.dentry* %39)
  %41 = load i32, i32* @notif, align 4
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %41, %struct.dentry* %42)
  %44 = load i32, i32* @rx, align 4
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %44, %struct.dentry* %45)
  %47 = load i32, i32* @tx, align 4
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = call i32 @__debugfs_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %47, %struct.dentry* %48)
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %52 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %51, i32 0, i32 2
  %53 = call %struct.dentry* @debugfs_create_u8(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %50, i32* %52)
  store %struct.dentry* %53, %struct.dentry** %7, align 8
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = call i32 @PTR_ERR(%struct.dentry* %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = call i64 @IS_ERR(%struct.dentry* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %31
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %88

68:                                               ; preds = %59, %31
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %71 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %70, i32 0, i32 1
  %72 = call %struct.dentry* @debugfs_create_size_t(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %69, i32* %71)
  store %struct.dentry* %72, %struct.dentry** %7, align 8
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = call i32 @PTR_ERR(%struct.dentry* %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.dentry*, %struct.dentry** %7, align 8
  %76 = call i64 @IS_ERR(%struct.dentry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  br label %88

87:                                               ; preds = %78, %68
  store i32 0, i32* %2, align 4
  br label %94

88:                                               ; preds = %83, %64, %30
  %89 = load %struct.i2400mu*, %struct.i2400mu** %3, align 8
  %90 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %89, i32 0, i32 0
  %91 = load %struct.dentry*, %struct.dentry** %90, align 8
  %92 = call i32 @debugfs_remove_recursive(%struct.dentry* %91)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %88, %87
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @__debugfs_register(i8*, i32, %struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_size_t(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
