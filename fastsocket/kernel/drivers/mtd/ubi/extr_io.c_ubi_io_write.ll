; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_io.c_ubi_io_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32, i64*, i8*)* }

@.str = private unnamed_addr constant [28 x i8] c"write %d bytes to PEB %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"read-only mode\00", align 1
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"cannot write %d bytes to PEB %d:%d (emulated)\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"error %d while writing %d bytes to PEB %d:%d, written %zd bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_io_write(%struct.ubi_device* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @dbg_io(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %5
  %28 = phi i1 [ false, %5 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubi_assert(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br label %41

41:                                               ; preds = %33, %27
  %42 = phi i1 [ false, %27 ], [ %40, %33 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ubi_assert(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %45, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ubi_assert(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %58 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = srem i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %55, %41
  %63 = phi i1 [ false, %41 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @ubi_assert(i32 %64)
  %66 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %67 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EROFS, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %202

74:                                               ; preds = %62
  %75 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @paranoid_check_not_bad(%struct.ubi_device* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load i32, i32* %12, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  br label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i32 [ %85, %83 ], [ %87, %86 ]
  store i32 %89, i32* %6, align 4
  br label %202

90:                                               ; preds = %74
  %91 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @ubi_dbg_check_all_ff(%struct.ubi_device* %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load i32, i32* %12, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %103, %101 ], [ %105, %104 ]
  store i32 %107, i32* %6, align 4
  br label %202

108:                                              ; preds = %90
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %111 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = icmp sge i32 %109, %112
  br i1 %113, label %114, label %147

114:                                              ; preds = %108
  %115 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @paranoid_check_peb_ec_hdr(%struct.ubi_device* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  br label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  br label %128

128:                                              ; preds = %126, %123
  %129 = phi i32 [ %125, %123 ], [ %127, %126 ]
  store i32 %129, i32* %6, align 4
  br label %202

130:                                              ; preds = %114
  %131 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @paranoid_check_peb_vid_hdr(%struct.ubi_device* %131, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load i32, i32* %12, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  br label %144

142:                                              ; preds = %136
  %143 = load i32, i32* %12, align 4
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i32 [ %141, %139 ], [ %143, %142 ]
  store i32 %145, i32* %6, align 4
  br label %202

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146, %108
  %148 = call i64 (...) @ubi_dbg_is_write_failure()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @dbg_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %152, i32 %153)
  %155 = call i32 (...) @ubi_dbg_dump_stack()
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %6, align 4
  br label %202

158:                                              ; preds = %147
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %161 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %163, %164
  store i32 %165, i32* %14, align 4
  %166 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %167 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %166, i32 0, i32 4
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32 (%struct.TYPE_2__*, i32, i32, i64*, i8*)*, i32 (%struct.TYPE_2__*, i32, i32, i64*, i8*)** %169, align 8
  %171 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %172 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %171, i32 0, i32 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 %170(%struct.TYPE_2__* %173, i32 %174, i32 %175, i64* %13, i8* %176)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %158
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* %10, align 4
  %185 = load i64, i64* %13, align 8
  %186 = call i32 (i8*, ...) @ubi_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %182, i32 %183, i32 %184, i64 %185)
  %187 = call i32 (...) @ubi_dbg_dump_stack()
  %188 = load %struct.ubi_device*, %struct.ubi_device** %7, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @ubi_dbg_dump_flash(%struct.ubi_device* %188, i32 %189, i32 %190, i32 %191)
  br label %200

193:                                              ; preds = %158
  %194 = load i64, i64* %13, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = icmp eq i64 %194, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @ubi_assert(i32 %198)
  br label %200

200:                                              ; preds = %193, %180
  %201 = load i32, i32* %12, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %200, %150, %144, %128, %106, %88, %70
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_err(i8*, ...) #1

declare dso_local i32 @paranoid_check_not_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_dbg_check_all_ff(%struct.ubi_device*, i32, i32, i32) #1

declare dso_local i32 @paranoid_check_peb_ec_hdr(%struct.ubi_device*, i32) #1

declare dso_local i32 @paranoid_check_peb_vid_hdr(%struct.ubi_device*, i32) #1

declare dso_local i64 @ubi_dbg_is_write_failure(...) #1

declare dso_local i32 @dbg_err(i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_dbg_dump_stack(...) #1

declare dso_local i32 @ubi_dbg_dump_flash(%struct.ubi_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
