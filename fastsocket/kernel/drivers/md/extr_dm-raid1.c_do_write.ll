; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid1.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, %struct.mirror*, i32 }
%struct.mirror = type { i32 }
%struct.bio = type { i32, i64, i64 }
%struct.dm_io_region = type { i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.TYPE_4__ = type { %struct.bio*, i32 }

@WRITE = common dso_local global i32 0, align 4
@WRITE_FLUSH_FUA = common dso_local global i32 0, align 4
@DM_IO_BVEC = common dso_local global i32 0, align 4
@write_callback = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@DM_IO_KMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio*)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write(%struct.mirror_set* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dm_io_region*, align 8
  %9 = alloca %struct.mirror*, align 8
  %10 = alloca %struct.dm_io_request, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %11 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %12 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.dm_io_region, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store %struct.dm_io_region* %16, %struct.dm_io_region** %8, align 8
  %17 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 0
  %18 = load i32, i32* @WRITE, align 4
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @WRITE_FLUSH_FUA, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %18, %23
  store i32 %24, i32* %17, align 8
  %25 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  store i64 %35, i64* %28, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %37 = load i32, i32* @DM_IO_BVEC, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 2
  %39 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %40 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %38, align 8
  %42 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %44, %struct.bio** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %46 = load i32, i32* @write_callback, align 4
  store i32 %46, i32* %45, align 8
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BIO_DISCARD, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %2
  %54 = load i32, i32* @BIO_DISCARD, align 4
  %55 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @DM_IO_KMEM, align 4
  %59 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %53, %2
  store i32 0, i32* %5, align 4
  %65 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %66 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %65, i32 0, i32 1
  %67 = load %struct.mirror*, %struct.mirror** %66, align 8
  store %struct.mirror* %67, %struct.mirror** %9, align 8
  br label %68

68:                                               ; preds = %81, %64
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %71 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %76 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %75, i32 1
  store %struct.dm_io_region* %76, %struct.dm_io_region** %8, align 8
  %77 = ptrtoint %struct.dm_io_region* %75 to i32
  %78 = load %struct.mirror*, %struct.mirror** %9, align 8
  %79 = load %struct.bio*, %struct.bio** %4, align 8
  %80 = call i32 @map_region(i32 %77, %struct.mirror* %78, %struct.bio* %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = load %struct.mirror*, %struct.mirror** %9, align 8
  %85 = getelementptr inbounds %struct.mirror, %struct.mirror* %84, i32 1
  store %struct.mirror* %85, %struct.mirror** %9, align 8
  br label %68

86:                                               ; preds = %68
  %87 = load %struct.bio*, %struct.bio** %4, align 8
  %88 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %89 = call i32 @get_default_mirror(%struct.mirror_set* %88)
  %90 = call i32 @bio_set_m(%struct.bio* %87, i32 %89)
  %91 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %92 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dm_io(%struct.dm_io_request* %10, i32 %93, %struct.dm_io_region* %16, i32* null)
  %95 = call i32 @BUG_ON(i32 %94)
  %96 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @map_region(i32, %struct.mirror*, %struct.bio*) #2

declare dso_local i32 @bio_set_m(%struct.bio*, i32) #2

declare dso_local i32 @get_default_mirror(%struct.mirror_set*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
