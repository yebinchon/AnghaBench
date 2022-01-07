; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32, i64*, i8*)* }

@.str = private unnamed_addr constant [29 x i8] c"read %d bytes from PEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fixable bit-flip detected at PEB %d\00", align 1
@UBI_IO_BITFLIPS = common dso_local global i32 0, align 4
@UBI_IO_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"error %d while reading %d bytes from PEB %d:%d, read only %zd bytes, retry\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"error %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"bit-flip (emulated)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_read(%struct.ubi_device* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (i8*, i32, i32, i32, ...) @dbg_io(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br label %28

28:                                               ; preds = %22, %5
  %29 = phi i1 [ false, %5 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ubi_assert(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %39 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %37, %40
  br label %42

42:                                               ; preds = %34, %28
  %43 = phi i1 [ false, %28 ], [ %41, %34 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubi_assert(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @ubi_assert(i32 %48)
  %50 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @paranoid_check_not_bad(%struct.ubi_device* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %42
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i32 [ %60, %58 ], [ %62, %61 ]
  store i32 %64, i32* %6, align 4
  br label %158

65:                                               ; preds = %42
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  br label %73

73:                                               ; preds = %113, %65
  %74 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_2__*, i32, i32, i64*, i8*)*, i32 (%struct.TYPE_2__*, i32, i32, i64*, i8*)** %77, align 8
  %79 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %80 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 %78(%struct.TYPE_2__* %81, i32 %82, i32 %83, i64* %14, i8* %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %143

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @EUCLEAN, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dbg_msg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %14, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ubi_assert(i32 %100)
  %102 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  store i32 %102, i32* %6, align 4
  br label %158

103:                                              ; preds = %88
  %104 = load i64, i64* %14, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp ne i64 %104, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* @UBI_IO_RETRIES, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i64, i64* %14, align 8
  %119 = call i32 (i8*, i32, i32, i32, ...) @dbg_io(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115, i32 %116, i32 %117, i64 %118)
  %120 = call i32 (...) @yield()
  br label %73

121:                                              ; preds = %108, %103
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @ubi_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123, i32 %124, i32 %125, i64 %126)
  %128 = call i32 (...) @ubi_dbg_dump_stack()
  %129 = load i64, i64* %14, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp ne i64 %129, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %121
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @EBADMSG, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = call i32 @ubi_assert(i32 0)
  %140 = load i32, i32* @EIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %12, align 4
  br label %142

142:                                              ; preds = %138, %133, %121
  br label %156

143:                                              ; preds = %73
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %14, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @ubi_assert(i32 %148)
  %150 = call i64 (...) @ubi_dbg_is_bitflip()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @UBI_IO_BITFLIPS, align 4
  store i32 %154, i32* %12, align 4
  br label %155

155:                                              ; preds = %152, %143
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %93, %63
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @paranoid_check_not_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @dbg_msg(i8*, i32) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @ubi_err(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ubi_dbg_dump_stack(...) #1

declare dso_local i64 @ubi_dbg_is_bitflip(...) #1

declare dso_local i32 @dbg_gen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
