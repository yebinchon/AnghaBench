; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmur.c_ur_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i16, %struct.urfile*, %struct.TYPE_4__* }
%struct.urfile = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.urdev = type { i64, i64, i32, i32, i32 }

@O_ACCMODE = common dso_local global i16 0, align 2
@O_RDWR = common dso_local global i16 0, align 2
@EACCES = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ur_open\0A\00", align 1
@O_RDONLY = common dso_local global i16 0, align 2
@DEV_CLASS_UR_I = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i16 0, align 2
@DEV_CLASS_UR_O = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ur_open: unsupported dev class (%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ur_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ur_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.urdev*, align 8
  %8 = alloca %struct.urfile*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @O_ACCMODE, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %9, align 2
  %19 = load i16, i16* %9, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* @O_RDWR, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %177

27:                                               ; preds = %2
  %28 = call i32 (...) @lock_kernel()
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MINOR(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.urdev* @urdev_get_from_devno(i32 %37)
  store %struct.urdev* %38, %struct.urdev** %7, align 8
  %39 = load %struct.urdev*, %struct.urdev** %7, align 8
  %40 = icmp ne %struct.urdev* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %174

44:                                               ; preds = %27
  %45 = load %struct.urdev*, %struct.urdev** %7, align 8
  %46 = getelementptr inbounds %struct.urdev, %struct.urdev* %45, i32 0, i32 2
  %47 = call i32 @spin_lock(i32* %46)
  br label %48

48:                                               ; preds = %81, %44
  %49 = load %struct.urdev*, %struct.urdev** %7, align 8
  %50 = getelementptr inbounds %struct.urdev, %struct.urdev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %48
  %54 = load %struct.urdev*, %struct.urdev** %7, align 8
  %55 = getelementptr inbounds %struct.urdev, %struct.urdev* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 8
  %60 = zext i16 %59 to i32
  %61 = load i32, i32* @O_NONBLOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %171

67:                                               ; preds = %53
  %68 = load %struct.urdev*, %struct.urdev** %7, align 8
  %69 = getelementptr inbounds %struct.urdev, %struct.urdev* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.urdev*, %struct.urdev** %7, align 8
  %72 = getelementptr inbounds %struct.urdev, %struct.urdev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @wait_event_interruptible(i32 %70, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @ERESTARTSYS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %10, align 4
  br label %171

81:                                               ; preds = %67
  %82 = load %struct.urdev*, %struct.urdev** %7, align 8
  %83 = getelementptr inbounds %struct.urdev, %struct.urdev* %82, i32 0, i32 2
  %84 = call i32 @spin_lock(i32* %83)
  br label %48

85:                                               ; preds = %48
  %86 = load %struct.urdev*, %struct.urdev** %7, align 8
  %87 = getelementptr inbounds %struct.urdev, %struct.urdev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.urdev*, %struct.urdev** %7, align 8
  %91 = getelementptr inbounds %struct.urdev, %struct.urdev* %90, i32 0, i32 2
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %94 = load i16, i16* %9, align 2
  %95 = zext i16 %94 to i32
  %96 = load i16, i16* @O_RDONLY, align 2
  %97 = zext i16 %96 to i32
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %85
  %100 = load %struct.urdev*, %struct.urdev** %7, align 8
  %101 = getelementptr inbounds %struct.urdev, %struct.urdev* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DEV_CLASS_UR_I, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99, %85
  %106 = load i16, i16* %9, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @O_WRONLY, align 2
  %109 = zext i16 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.urdev*, %struct.urdev** %7, align 8
  %113 = getelementptr inbounds %struct.urdev, %struct.urdev* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DEV_CLASS_UR_O, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %111, %99
  %118 = load %struct.urdev*, %struct.urdev** %7, align 8
  %119 = getelementptr inbounds %struct.urdev, %struct.urdev* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @EACCES, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %10, align 4
  br label %160

124:                                              ; preds = %111, %105
  %125 = load %struct.urdev*, %struct.urdev** %7, align 8
  %126 = call i32 @verify_device(%struct.urdev* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %160

130:                                              ; preds = %124
  %131 = load %struct.urdev*, %struct.urdev** %7, align 8
  %132 = call %struct.urfile* @urfile_alloc(%struct.urdev* %131)
  store %struct.urfile* %132, %struct.urfile** %8, align 8
  %133 = load %struct.urfile*, %struct.urfile** %8, align 8
  %134 = icmp ne %struct.urfile* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %160

138:                                              ; preds = %130
  %139 = load %struct.urdev*, %struct.urdev** %7, align 8
  %140 = getelementptr inbounds %struct.urdev, %struct.urdev* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.urfile*, %struct.urfile** %8, align 8
  %143 = getelementptr inbounds %struct.urfile, %struct.urfile* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load %struct.urdev*, %struct.urdev** %7, align 8
  %145 = call i32 @get_file_reclen(%struct.urdev* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %157

149:                                              ; preds = %138
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.urfile*, %struct.urfile** %8, align 8
  %152 = getelementptr inbounds %struct.urfile, %struct.urfile* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.urfile*, %struct.urfile** %8, align 8
  %154 = load %struct.file*, %struct.file** %5, align 8
  %155 = getelementptr inbounds %struct.file, %struct.file* %154, i32 0, i32 1
  store %struct.urfile* %153, %struct.urfile** %155, align 8
  %156 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %177

157:                                              ; preds = %148
  %158 = load %struct.urfile*, %struct.urfile** %8, align 8
  %159 = call i32 @urfile_free(%struct.urfile* %158)
  br label %160

160:                                              ; preds = %157, %135, %129, %117
  %161 = load %struct.urdev*, %struct.urdev** %7, align 8
  %162 = getelementptr inbounds %struct.urdev, %struct.urdev* %161, i32 0, i32 2
  %163 = call i32 @spin_lock(i32* %162)
  %164 = load %struct.urdev*, %struct.urdev** %7, align 8
  %165 = getelementptr inbounds %struct.urdev, %struct.urdev* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, -1
  store i64 %167, i64* %165, align 8
  %168 = load %struct.urdev*, %struct.urdev** %7, align 8
  %169 = getelementptr inbounds %struct.urdev, %struct.urdev* %168, i32 0, i32 2
  %170 = call i32 @spin_unlock(i32* %169)
  br label %171

171:                                              ; preds = %160, %78, %64
  %172 = load %struct.urdev*, %struct.urdev** %7, align 8
  %173 = call i32 @urdev_put(%struct.urdev* %172)
  br label %174

174:                                              ; preds = %171, %41
  %175 = call i32 (...) @unlock_kernel()
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %174, %149, %24
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local %struct.urdev* @urdev_get_from_devno(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @verify_device(%struct.urdev*) #1

declare dso_local %struct.urfile* @urfile_alloc(%struct.urdev*) #1

declare dso_local i32 @get_file_reclen(%struct.urdev*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @urfile_free(%struct.urfile*) #1

declare dso_local i32 @urdev_put(%struct.urdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
