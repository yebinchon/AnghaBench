; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_ubd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubd = type { %struct.TYPE_8__*, i32, i32, i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.ubd* }
%struct.TYPE_7__ = type { i32 }

@ubd_devs = common dso_local global %struct.ubd* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Couldn't determine size of device's file\00", align 1
@MAX_SG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_ubd_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize device queue\00", align 1
@UBD_MAJOR = common dso_local global i64 0, align 8
@ubd_gendisk = common dso_local global %struct.TYPE_7__** null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to register device\00", align 1
@fake_major = common dso_local global i64 0, align 8
@fake_gendisk = common dso_local global %struct.TYPE_7__** null, align 8
@fake_ide = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @ubd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubd_add(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.ubd*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.ubd*, %struct.ubd** @ubd_devs, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.ubd, %struct.ubd* %7, i64 %9
  store %struct.ubd* %10, %struct.ubd** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.ubd*, %struct.ubd** %5, align 8
  %12 = getelementptr inbounds %struct.ubd, %struct.ubd* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %107

16:                                               ; preds = %2
  %17 = load %struct.ubd*, %struct.ubd** %5, align 8
  %18 = load %struct.ubd*, %struct.ubd** %5, align 8
  %19 = getelementptr inbounds %struct.ubd, %struct.ubd* %18, i32 0, i32 1
  %20 = call i32 @ubd_file_size(%struct.ubd* %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  br label %107

25:                                               ; preds = %16
  %26 = load %struct.ubd*, %struct.ubd** %5, align 8
  %27 = getelementptr inbounds %struct.ubd, %struct.ubd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ROUND_BLOCK(i32 %28)
  %30 = load %struct.ubd*, %struct.ubd** %5, align 8
  %31 = getelementptr inbounds %struct.ubd, %struct.ubd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ubd*, %struct.ubd** %5, align 8
  %33 = getelementptr inbounds %struct.ubd, %struct.ubd* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.ubd*, %struct.ubd** %5, align 8
  %36 = getelementptr inbounds %struct.ubd, %struct.ubd* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MAX_SG, align 4
  %39 = call i32 @sg_init_table(i32 %37, i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @do_ubd_request, align 4
  %43 = load %struct.ubd*, %struct.ubd** %5, align 8
  %44 = getelementptr inbounds %struct.ubd, %struct.ubd* %43, i32 0, i32 2
  %45 = call %struct.TYPE_8__* @blk_init_queue(i32 %42, i32* %44)
  %46 = load %struct.ubd*, %struct.ubd** %5, align 8
  %47 = getelementptr inbounds %struct.ubd, %struct.ubd* %46, i32 0, i32 0
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %47, align 8
  %48 = load %struct.ubd*, %struct.ubd** %5, align 8
  %49 = getelementptr inbounds %struct.ubd, %struct.ubd* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = icmp eq %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %25
  %53 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %53, align 8
  br label %107

54:                                               ; preds = %25
  %55 = load %struct.ubd*, %struct.ubd** %5, align 8
  %56 = load %struct.ubd*, %struct.ubd** %5, align 8
  %57 = getelementptr inbounds %struct.ubd, %struct.ubd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store %struct.ubd* %55, %struct.ubd** %59, align 8
  %60 = load %struct.ubd*, %struct.ubd** %5, align 8
  %61 = getelementptr inbounds %struct.ubd, %struct.ubd* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* @MAX_SG, align 4
  %64 = call i32 @blk_queue_max_segments(%struct.TYPE_8__* %62, i32 %63)
  %65 = load i64, i64* @UBD_MAJOR, align 8
  %66 = load %struct.ubd*, %struct.ubd** %5, align 8
  %67 = getelementptr inbounds %struct.ubd, %struct.ubd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ubd_gendisk, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %72
  %74 = call i32 @ubd_disk_register(i64 %65, i32 %68, i32 %69, %struct.TYPE_7__** %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %54
  %78 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %78, align 8
  br label %109

79:                                               ; preds = %54
  %80 = load i64, i64* @fake_major, align 8
  %81 = load i64, i64* @UBD_MAJOR, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i64, i64* @fake_major, align 8
  %85 = load %struct.ubd*, %struct.ubd** %5, align 8
  %86 = getelementptr inbounds %struct.ubd, %struct.ubd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fake_gendisk, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %89, i64 %91
  %93 = call i32 @ubd_disk_register(i64 %84, i32 %87, i32 %88, %struct.TYPE_7__** %92)
  br label %94

94:                                               ; preds = %83, %79
  %95 = load i64, i64* @fake_ide, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ubd_gendisk, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %98, i64 %100
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @make_ide_entries(i32 %104)
  br label %106

106:                                              ; preds = %97, %94
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %109, %106, %52, %23, %15
  %108 = load i32, i32* %6, align 4
  ret i32 %108

109:                                              ; preds = %77
  %110 = load %struct.ubd*, %struct.ubd** %5, align 8
  %111 = getelementptr inbounds %struct.ubd, %struct.ubd* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @blk_cleanup_queue(%struct.TYPE_8__* %112)
  br label %107
}

declare dso_local i32 @ubd_file_size(%struct.ubd*, i32*) #1

declare dso_local i32 @ROUND_BLOCK(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local %struct.TYPE_8__* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @blk_queue_max_segments(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ubd_disk_register(i64, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @make_ide_entries(i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
