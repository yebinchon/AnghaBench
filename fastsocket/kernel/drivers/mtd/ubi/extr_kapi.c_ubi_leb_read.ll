; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_leb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i64, i32, i32, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"read %d bytes from LEB %d:%d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@EBADF = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mark volume %d as corrupted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_leb_read(%struct.ubi_volume_desc* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_volume_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubi_volume*, align 8
  %15 = alloca %struct.ubi_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %8, align 8
  %19 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %18, i32 0, i32 0
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %19, align 8
  store %struct.ubi_volume* %20, %struct.ubi_volume** %14, align 8
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 7
  %23 = load %struct.ubi_device*, %struct.ubi_device** %22, align 8
  store %struct.ubi_device* %23, %struct.ubi_device** %15, align 8
  %24 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %25 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @dbg_gen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %17, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* %17, align 4
  %36 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %37 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %63, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %63, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %46 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %63, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %60 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55, %52, %49, %43, %40, %34, %6
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %138

66:                                               ; preds = %55
  %67 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %68 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %66
  %73 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %74 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %138

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %81 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp eq i32 %79, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %90 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %7, align 4
  br label %138

96:                                               ; preds = %85, %78
  br label %97

97:                                               ; preds = %96, %66
  %98 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %99 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @EBADF, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %138

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %138

109:                                              ; preds = %105
  %110 = load %struct.ubi_device*, %struct.ubi_device** %15, align 8
  %111 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @ubi_eba_read_leb(%struct.ubi_device* %110, %struct.ubi_volume* %111, i32 %112, i8* %113, i32 %114, i32 %115, i32 %116)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %109
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @EBADMSG, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %127 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @ubi_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load %struct.ubi_volume*, %struct.ubi_volume** %14, align 8
  %135 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %134, i32 0, i32 5
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %131, %125, %120, %109
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %108, %102, %93, %77, %63
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_eba_read_leb(%struct.ubi_device*, %struct.ubi_volume*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
