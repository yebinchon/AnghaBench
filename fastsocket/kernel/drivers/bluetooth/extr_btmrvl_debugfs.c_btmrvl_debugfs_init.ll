; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_debugfs.c_btmrvl_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.btmrvl_private* }
%struct.btmrvl_private = type { %struct.btmrvl_debugfs_data* }
%struct.btmrvl_debugfs_data = type { i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can not allocate memory for btmrvl_debugfs_data.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"btmrvl\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"psmode\00", align 1
@btmrvl_psmode_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"pscmd\00", align 1
@btmrvl_pscmd_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"gpiogap\00", align 1
@btmrvl_gpiogap_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"hsmode\00", align 1
@btmrvl_hsmode_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"hscmd\00", align 1
@btmrvl_hscmd_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"hscfgcmd\00", align 1
@btmrvl_hscfgcmd_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"curpsmode\00", align 1
@btmrvl_curpsmode_fops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"psstate\00", align 1
@btmrvl_psstate_fops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"hsstate\00", align 1
@btmrvl_hsstate_fops = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"txdnldready\00", align 1
@btmrvl_txdnldready_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmrvl_debugfs_init(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.btmrvl_debugfs_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 0
  %7 = load %struct.btmrvl_private*, %struct.btmrvl_private** %6, align 8
  store %struct.btmrvl_private* %7, %struct.btmrvl_private** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.btmrvl_debugfs_data* @kzalloc(i32 104, i32 %8)
  store %struct.btmrvl_debugfs_data* %9, %struct.btmrvl_debugfs_data** %4, align 8
  %10 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %11 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %12 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %11, i32 0, i32 0
  store %struct.btmrvl_debugfs_data* %10, %struct.btmrvl_debugfs_data** %12, align 8
  %13 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %14 = icmp ne %struct.btmrvl_debugfs_data* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 @BT_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %124

17:                                               ; preds = %1
  %18 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %21 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %20, i32 0, i32 5
  store i32* %19, i32** %21, align 8
  %22 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %23 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %24)
  %26 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %27 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %29 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %28, i32 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = load %struct.btmrvl_private*, %struct.btmrvl_private** %32, align 8
  %34 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 420, i8* %30, %struct.btmrvl_private* %33, i32* @btmrvl_psmode_fops)
  %35 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %36 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %35, i32 0, i32 12
  store i8* %34, i8** %36, align 8
  %37 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %38 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %37, i32 0, i32 6
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = load %struct.btmrvl_private*, %struct.btmrvl_private** %41, align 8
  %43 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* %39, %struct.btmrvl_private* %42, i32* @btmrvl_pscmd_fops)
  %44 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %45 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %44, i32 0, i32 11
  store i8* %43, i8** %45, align 8
  %46 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %47 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %46, i32 0, i32 6
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = load %struct.btmrvl_private*, %struct.btmrvl_private** %50, align 8
  %52 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 420, i8* %48, %struct.btmrvl_private* %51, i32* @btmrvl_gpiogap_fops)
  %53 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %54 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  %55 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %56 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %55, i32 0, i32 6
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 0
  %60 = load %struct.btmrvl_private*, %struct.btmrvl_private** %59, align 8
  %61 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* %57, %struct.btmrvl_private* %60, i32* @btmrvl_hsmode_fops)
  %62 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %63 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %62, i32 0, i32 9
  store i8* %61, i8** %63, align 8
  %64 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %65 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %64, i32 0, i32 6
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 0
  %69 = load %struct.btmrvl_private*, %struct.btmrvl_private** %68, align 8
  %70 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 420, i8* %66, %struct.btmrvl_private* %69, i32* @btmrvl_hscmd_fops)
  %71 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %72 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %71, i32 0, i32 8
  store i8* %70, i8** %72, align 8
  %73 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %74 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %73, i32 0, i32 6
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 0
  %78 = load %struct.btmrvl_private*, %struct.btmrvl_private** %77, align 8
  %79 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 420, i8* %75, %struct.btmrvl_private* %78, i32* @btmrvl_hscfgcmd_fops)
  %80 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %81 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %80, i32 0, i32 7
  store i8* %79, i8** %81, align 8
  %82 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %83 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* %84)
  %86 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %87 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %89 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 0
  %93 = load %struct.btmrvl_private*, %struct.btmrvl_private** %92, align 8
  %94 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 292, i8* %90, %struct.btmrvl_private* %93, i32* @btmrvl_curpsmode_fops)
  %95 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %96 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %98 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 0
  %102 = load %struct.btmrvl_private*, %struct.btmrvl_private** %101, align 8
  %103 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 292, i8* %99, %struct.btmrvl_private* %102, i32* @btmrvl_psstate_fops)
  %104 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %105 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %107 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %110 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %109, i32 0, i32 0
  %111 = load %struct.btmrvl_private*, %struct.btmrvl_private** %110, align 8
  %112 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 292, i8* %108, %struct.btmrvl_private* %111, i32* @btmrvl_hsstate_fops)
  %113 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %114 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %116 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 0
  %120 = load %struct.btmrvl_private*, %struct.btmrvl_private** %119, align 8
  %121 = call i8* @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 292, i8* %117, %struct.btmrvl_private* %120, i32* @btmrvl_txdnldready_fops)
  %122 = load %struct.btmrvl_debugfs_data*, %struct.btmrvl_debugfs_data** %4, align 8
  %123 = getelementptr inbounds %struct.btmrvl_debugfs_data, %struct.btmrvl_debugfs_data* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %17, %15
  ret void
}

declare dso_local %struct.btmrvl_debugfs_data* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i8* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i8* @debugfs_create_file(i8*, i32, i8*, %struct.btmrvl_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
