; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid0.c_raid0_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32 }
%struct.bio = type { i32, i32, i32, i64, i32 }
%struct.strip_zone = type { i32 }
%struct.md_rdev = type { i32, i32 }
%struct.bio_pair = type { %struct.bio, %struct.bio }

@BIO_FLUSH = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"md/raid0:%s: make_request bug: can't convert block across chunks or bigger than %dk %llu %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.bio*)* @raid0_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid0_make_request(%struct.mddev* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.strip_zone*, align 8
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio_pair*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BIO_FLUSH, align 4
  %16 = and i32 %14, %15
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.mddev*, %struct.mddev** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = call i32 @md_flush_request(%struct.mddev* %20, %struct.bio* %21)
  store i32 0, i32* %3, align 4
  br label %168

23:                                               ; preds = %2
  %24 = load %struct.mddev*, %struct.mddev** %4, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.mddev*, %struct.mddev** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = call i32 @is_io_in_chunk_boundary(%struct.mddev* %27, i32 %28, %struct.bio* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %23
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.bio*, %struct.bio** %5, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load %struct.bio*, %struct.bio** %5, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  br label %153

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @is_power_of_2(i32 %56)
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub i32 %64, 1
  %66 = and i32 %63, %65
  %67 = sub i32 %62, %66
  %68 = call %struct.bio_pair* @bio_split(%struct.bio* %61, i32 %67)
  store %struct.bio_pair* %68, %struct.bio_pair** %11, align 8
  br label %77

69:                                               ; preds = %55
  %70 = load %struct.bio*, %struct.bio** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @sector_div(i32 %72, i32 %73)
  %75 = sub i32 %71, %74
  %76 = call %struct.bio_pair* @bio_split(%struct.bio* %70, i32 %75)
  store %struct.bio_pair* %76, %struct.bio_pair** %11, align 8
  br label %77

77:                                               ; preds = %69, %60
  %78 = load %struct.mddev*, %struct.mddev** %4, align 8
  %79 = load %struct.bio_pair*, %struct.bio_pair** %11, align 8
  %80 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %79, i32 0, i32 1
  %81 = call i32 @raid0_make_request(%struct.mddev* %78, %struct.bio* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.bio_pair*, %struct.bio_pair** %11, align 8
  %85 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %84, i32 0, i32 1
  %86 = call i32 @generic_make_request(%struct.bio* %85)
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.mddev*, %struct.mddev** %4, align 8
  %89 = load %struct.bio_pair*, %struct.bio_pair** %11, align 8
  %90 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %89, i32 0, i32 0
  %91 = call i32 @raid0_make_request(%struct.mddev* %88, %struct.bio* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.bio_pair*, %struct.bio_pair** %11, align 8
  %95 = getelementptr inbounds %struct.bio_pair, %struct.bio_pair* %94, i32 0, i32 0
  %96 = call i32 @generic_make_request(%struct.bio* %95)
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.bio_pair*, %struct.bio_pair** %11, align 8
  %99 = call i32 @bio_pair_release(%struct.bio_pair* %98)
  store i32 0, i32* %3, align 4
  br label %168

100:                                              ; preds = %23
  %101 = load %struct.bio*, %struct.bio** %5, align 8
  %102 = getelementptr inbounds %struct.bio, %struct.bio* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %7, align 4
  %104 = load %struct.mddev*, %struct.mddev** %4, align 8
  %105 = getelementptr inbounds %struct.mddev, %struct.mddev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.strip_zone* @find_zone(i32 %106, i32* %7)
  store %struct.strip_zone* %107, %struct.strip_zone** %8, align 8
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = load %struct.strip_zone*, %struct.strip_zone** %8, align 8
  %110 = load %struct.bio*, %struct.bio** %5, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.md_rdev* @map_sector(%struct.mddev* %108, %struct.strip_zone* %109, i32 %112, i32* %7)
  store %struct.md_rdev* %113, %struct.md_rdev** %9, align 8
  %114 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %115 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bio*, %struct.bio** %5, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.strip_zone*, %struct.strip_zone** %8, align 8
  %121 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %119, %122
  %124 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %125 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add i32 %123, %126
  %128 = load %struct.bio*, %struct.bio** %5, align 8
  %129 = getelementptr inbounds %struct.bio, %struct.bio* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.bio*, %struct.bio** %5, align 8
  %131 = getelementptr inbounds %struct.bio, %struct.bio* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @BIO_DISCARD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %100
  %137 = load %struct.bio*, %struct.bio** %5, align 8
  %138 = getelementptr inbounds %struct.bio, %struct.bio* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @bdev_get_queue(i32 %139)
  %141 = call i32 @blk_queue_discard(i32 %140)
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  br label %144

144:                                              ; preds = %136, %100
  %145 = phi i1 [ false, %100 ], [ %143, %136 ]
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load %struct.bio*, %struct.bio** %5, align 8
  %151 = call i32 @bio_endio(%struct.bio* %150, i32 0)
  store i32 0, i32* %3, align 4
  br label %168

152:                                              ; preds = %144
  store i32 1, i32* %3, align 4
  br label %168

153:                                              ; preds = %54
  %154 = load %struct.mddev*, %struct.mddev** %4, align 8
  %155 = call i32 @mdname(%struct.mddev* %154)
  %156 = load i32, i32* %6, align 4
  %157 = udiv i32 %156, 2
  %158 = load %struct.bio*, %struct.bio** %5, align 8
  %159 = getelementptr inbounds %struct.bio, %struct.bio* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  %162 = load %struct.bio*, %struct.bio** %5, align 8
  %163 = call i32 @bio_sectors(%struct.bio* %162)
  %164 = sdiv i32 %163, 2
  %165 = call i32 @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %155, i32 %157, i64 %161, i32 %164)
  %166 = load %struct.bio*, %struct.bio** %5, align 8
  %167 = call i32 @bio_io_error(%struct.bio* %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %153, %152, %149, %97, %19
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @md_flush_request(%struct.mddev*, %struct.bio*) #1

declare dso_local i32 @is_io_in_chunk_boundary(%struct.mddev*, i32, %struct.bio*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local %struct.bio_pair* @bio_split(%struct.bio*, i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @bio_pair_release(%struct.bio_pair*) #1

declare dso_local %struct.strip_zone* @find_zone(i32, i32*) #1

declare dso_local %struct.md_rdev* @map_sector(%struct.mddev*, %struct.strip_zone*, i32, i32*) #1

declare dso_local i32 @blk_queue_discard(i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
