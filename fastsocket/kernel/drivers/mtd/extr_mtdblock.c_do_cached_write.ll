; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_do_cached_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_do_cached_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i32, i64, i64, i32, %struct.mtd_info* }
%struct.mtd_info = type { i32 (%struct.mtd_info*, i64, i32, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i32, i64*, i32)*, i32 }

@MTD_DEBUG_LEVEL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"mtdblock: write on \22%s\22 at 0x%lx, size 0x%x\0A\00", align 1
@STATE_DIRTY = common dso_local global i64 0, align 8
@STATE_EMPTY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@STATE_CLEAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdblk_dev*, i64, i32, i8*)* @do_cached_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cached_write(%struct.mtdblk_dev* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtdblk_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtdblk_dev* %0, %struct.mtdblk_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %17, i32 0, i32 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %18, align 8
  store %struct.mtd_info* %19, %struct.mtd_info** %10, align 8
  %20 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %21 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @MTD_DEBUG_LEVEL2, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DEBUG(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i32 (%struct.mtd_info*, i64, i32, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i32, i64*, i8*)** %34, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 %35(%struct.mtd_info* %36, i64 %37, i32 %38, i64* %12, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %173

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %160, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %172

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = udiv i64 %46, %48
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %49, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %45
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @erase_write(%struct.mtd_info* %70, i64 %71, i32 %72, i8* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %173

79:                                               ; preds = %69
  br label %160

80:                                               ; preds = %65
  %81 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %82 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @STATE_DIRTY, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %88 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %94 = call i32 @write_cached_data(%struct.mtdblk_dev* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %173

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %86, %80
  %101 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %102 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @STATE_EMPTY, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %108 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %148

112:                                              ; preds = %106, %100
  %113 = load i64, i64* @STATE_EMPTY, align 8
  %114 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %115 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %117 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %116, i32 0, i32 1
  %118 = load i32 (%struct.mtd_info*, i64, i32, i64*, i32)*, i32 (%struct.mtd_info*, i64, i32, i64*, i32)** %117, align 8
  %119 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %120 = load i64, i64* %14, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %123 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %118(%struct.mtd_info* %119, i64 %120, i32 %121, i64* %12, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %112
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %5, align 4
  br label %173

130:                                              ; preds = %112
  %131 = load i64, i64* %12, align 8
  %132 = load i32, i32* %11, align 4
  %133 = zext i32 %132 to i64
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %173

138:                                              ; preds = %130
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %141 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %144 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i64, i64* @STATE_CLEAN, align 8
  %146 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %147 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %106
  %149 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %150 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = add i32 %151, %152
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @memcpy(i32 %153, i8* %154, i32 %155)
  %157 = load i64, i64* @STATE_DIRTY, align 8
  %158 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %159 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %148, %79
  %161 = load i32, i32* %16, align 4
  %162 = load i8*, i8** %9, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %9, align 8
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %7, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %7, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* %8, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %42

172:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %172, %135, %128, %97, %77, %32
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @erase_write(%struct.mtd_info*, i64, i32, i8*) #1

declare dso_local i32 @write_cached_data(%struct.mtdblk_dev*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
