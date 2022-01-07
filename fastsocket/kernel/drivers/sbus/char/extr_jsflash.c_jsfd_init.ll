; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_jsflash.c_jsfd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/sbus/char/extr_jsflash.c_jsfd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsflash = type { i64, %struct.jsfd_part* }
%struct.jsfd_part = type { i32 }
%struct.gendisk = type { i32, i64, %struct.jsfd_part*, i32*, i32, i32 }

@jsfd_init.lock = internal global i32 0, align 4
@jsf0 = common dso_local global %struct.jsflash zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@JSF_MAX = common dso_local global i32 0, align 4
@jsfd_disk = common dso_local global %struct.gendisk** null, align 8
@JSFD_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"jsfd\00", align 1
@EIO = common dso_local global i32 0, align 4
@jsfd_do_request = common dso_local global i32 0, align 4
@jsf_queue = common dso_local global i64 0, align 8
@JSF_PART_MASK = common dso_local global i32 0, align 4
@JSF_NPART = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"jsfd%d\00", align 1
@jsfd_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @jsfd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsfd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.jsflash*, align 8
  %3 = alloca %struct.jsfd_part*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.jsflash, %struct.jsflash* @jsf0, i32 0, i32 0), align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @ENXIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %124

13:                                               ; preds = %0
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %31, %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @JSF_MAX, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %21, %struct.gendisk** %6, align 8
  %22 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %23 = icmp ne %struct.gendisk* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %110

25:                                               ; preds = %20
  %26 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %27 = load %struct.gendisk**, %struct.gendisk*** @jsfd_disk, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %27, i64 %29
  store %struct.gendisk* %26, %struct.gendisk** %30, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* @JSFD_MAJOR, align 4
  %36 = call i64 @register_blkdev(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %110

41:                                               ; preds = %34
  %42 = load i32, i32* @jsfd_do_request, align 4
  %43 = call i64 @blk_init_queue(i32 %42, i32* @jsfd_init.lock)
  store i64 %43, i64* @jsf_queue, align 8
  %44 = load i64, i64* @jsf_queue, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @JSFD_MAJOR, align 4
  %50 = call i32 @unregister_blkdev(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %110

51:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %106, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @JSF_MAX, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %109

56:                                               ; preds = %52
  %57 = load %struct.gendisk**, %struct.gendisk*** @jsfd_disk, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %57, i64 %59
  %61 = load %struct.gendisk*, %struct.gendisk** %60, align 8
  store %struct.gendisk* %61, %struct.gendisk** %7, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @JSF_PART_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @JSF_NPART, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %106

68:                                               ; preds = %56
  store %struct.jsflash* @jsf0, %struct.jsflash** %2, align 8
  %69 = load %struct.jsflash*, %struct.jsflash** %2, align 8
  %70 = getelementptr inbounds %struct.jsflash, %struct.jsflash* %69, i32 0, i32 1
  %71 = load %struct.jsfd_part*, %struct.jsfd_part** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @JSF_PART_MASK, align 4
  %74 = and i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.jsfd_part, %struct.jsfd_part* %71, i64 %75
  store %struct.jsfd_part* %76, %struct.jsfd_part** %3, align 8
  %77 = load i32, i32* @JSFD_MAJOR, align 4
  %78 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %79 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %82 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %84 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @sprintf(i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %89 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %88, i32 0, i32 3
  store i32* @jsfd_fops, i32** %89, align 8
  %90 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %91 = load %struct.jsfd_part*, %struct.jsfd_part** %3, align 8
  %92 = getelementptr inbounds %struct.jsfd_part, %struct.jsfd_part* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 9
  %95 = call i32 @set_capacity(%struct.gendisk* %90, i32 %94)
  %96 = load %struct.jsfd_part*, %struct.jsfd_part** %3, align 8
  %97 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %98 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %97, i32 0, i32 2
  store %struct.jsfd_part* %96, %struct.jsfd_part** %98, align 8
  %99 = load i64, i64* @jsf_queue, align 8
  %100 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %101 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %103 = call i32 @add_disk(%struct.gendisk* %102)
  %104 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %105 = call i32 @set_disk_ro(%struct.gendisk* %104, i32 1)
  br label %106

106:                                              ; preds = %68, %67
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %52

109:                                              ; preds = %52
  store i32 0, i32* %1, align 4
  br label %124

110:                                              ; preds = %46, %38, %24
  br label %111

111:                                              ; preds = %115, %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.gendisk**, %struct.gendisk*** @jsfd_disk, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.gendisk*, %struct.gendisk** %116, i64 %118
  %120 = load %struct.gendisk*, %struct.gendisk** %119, align 8
  %121 = call i32 @put_disk(%struct.gendisk* %120)
  br label %111

122:                                              ; preds = %111
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %1, align 4
  br label %124

124:                                              ; preds = %122, %109, %10
  %125 = load i32, i32* %1, align 4
  ret i32 %125
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i64 @register_blkdev(i32, i8*) #1

declare dso_local i64 @blk_init_queue(i32, i32*) #1

declare dso_local i32 @unregister_blkdev(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @set_disk_ro(%struct.gendisk*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
