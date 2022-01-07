; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_bio_filebacked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_do_bio_filebacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, i32, i64, %struct.file* }
%struct.file = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.inode*, i32, i32, i32)* }
%struct.bio = type { i32, i32, i64 }

@WRITE = common dso_local global i64 0, align 8
@BIO_RW_BARRIER = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_FLUSH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@BIO_DISCARD = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@BIO_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.bio*)* @do_bio_filebacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bio_filebacked(%struct.loop_device* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 9
  %15 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %16 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = call i64 @bio_rw(%struct.bio* %19)
  %21 = load i64, i64* @WRITE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %168

23:                                               ; preds = %2
  %24 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %25 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %24, i32 0, i32 3
  %26 = load %struct.file*, %struct.file** %25, align 8
  store %struct.file* %26, %struct.file** %7, align 8
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = load i32, i32* @BIO_RW_BARRIER, align 4
  %29 = call i64 @bio_rw_flagged(%struct.bio* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %177

34:                                               ; preds = %23
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BIO_FLUSH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @vfs_fsync(%struct.file* %42, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br label %55

55:                                               ; preds = %50, %41
  %56 = phi i1 [ false, %41 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %177

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.bio*, %struct.bio** %4, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @BIO_DISCARD, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %130

71:                                               ; preds = %64
  %72 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %73 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %72, i32 0, i32 3
  %74 = load %struct.file*, %struct.file** %73, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.inode*, %struct.inode** %77, align 8
  store %struct.inode* %78, %struct.inode** %8, align 8
  %79 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %80 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32 (%struct.inode*, i32, i32, i32)*, i32 (%struct.inode*, i32, i32, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.inode*, i32, i32, i32)* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %71
  %89 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %90 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88, %71
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %6, align 4
  br label %177

96:                                               ; preds = %88
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.inode*, i32, i32, i32)*, i32 (%struct.inode*, i32, i32, i32)** %100, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.bio*, %struct.bio** %4, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 %101(%struct.inode* %102, i32 %103, i32 %104, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %96
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @EOPNOTSUPP, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br label %121

121:                                              ; preds = %116, %111, %96
  %122 = phi i1 [ false, %111 ], [ false, %96 ], [ %120, %116 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %126, %121
  br label %177

130:                                              ; preds = %64
  %131 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %132 = load %struct.bio*, %struct.bio** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @lo_send(%struct.loop_device* %131, %struct.bio* %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load %struct.bio*, %struct.bio** %4, align 8
  %136 = getelementptr inbounds %struct.bio, %struct.bio* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @BIO_FUA, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %130
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %167, label %144

144:                                              ; preds = %141
  %145 = load %struct.file*, %struct.file** %7, align 8
  %146 = load %struct.file*, %struct.file** %7, align 8
  %147 = getelementptr inbounds %struct.file, %struct.file* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @vfs_fsync(%struct.file* %145, i32 %149, i32 0)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  %157 = icmp ne i32 %154, %156
  br label %158

158:                                              ; preds = %153, %144
  %159 = phi i1 [ false, %144 ], [ %157, %153 ]
  %160 = zext i1 %159 to i32
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %163, %158
  br label %167

167:                                              ; preds = %166, %141, %130
  br label %176

168:                                              ; preds = %2
  %169 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %170 = load %struct.bio*, %struct.bio** %4, align 8
  %171 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %172 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @lo_receive(%struct.loop_device* %169, %struct.bio* %170, i32 %173, i32 %174)
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %168, %167
  br label %177

177:                                              ; preds = %176, %129, %93, %60, %31
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i64 @bio_rw(%struct.bio*) #1

declare dso_local i64 @bio_rw_flagged(%struct.bio*, i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lo_send(%struct.loop_device*, %struct.bio*, i32) #1

declare dso_local i32 @lo_receive(%struct.loop_device*, %struct.bio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
