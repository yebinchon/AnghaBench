; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_fib_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_fib_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, i32, %struct.fib*, %struct.fib*, %struct.TYPE_6__*, %struct.hw_fib*, %struct.TYPE_4__* }
%struct.fib = type { i32, %struct.fib*, i32, i32, %struct.hw_fib*, i8*, %struct.aac_dev*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.hw_fib = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@AAC_NUM_MGT_FIB = common dso_local global i32 0, align 4
@ALIGN32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_fib_setup(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.hw_fib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %10 = call i32 @fib_map_alloc(%struct.aac_dev* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %21 = sub nsw i32 64, %20
  %22 = icmp sgt i32 %19, %21
  br label %23

23:                                               ; preds = %14, %8
  %24 = phi i1 [ false, %8 ], [ %22, %14 ]
  br i1 %24, label %25, label %51

25:                                               ; preds = %23
  %26 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %27 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %32 = add nsw i32 %30, %31
  %33 = ashr i32 %32, 1
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %36 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %35, i32 0, i32 6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i8* %34, i8** %38, align 8
  %39 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %40 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %39, i32 0, i32 6
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @le32_to_cpu(i8* %43)
  %45 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %48 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %47, i32 0, i32 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  br label %8

51:                                               ; preds = %23
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %224

57:                                               ; preds = %51
  %58 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %59 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ALIGN32, align 4
  %62 = sub nsw i32 %61, 1
  %63 = add nsw i32 %60, %62
  %64 = load i32, i32* @ALIGN32, align 4
  %65 = sub nsw i32 %64, 1
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  store i32 %67, i32* %6, align 4
  %68 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %69 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %68, i32 0, i32 5
  %70 = load %struct.hw_fib*, %struct.hw_fib** %69, align 8
  %71 = bitcast %struct.hw_fib* %70 to i8*
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %74 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %71, i64 %77
  %79 = bitcast i8* %78 to %struct.hw_fib*
  %80 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %81 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %80, i32 0, i32 5
  store %struct.hw_fib* %79, %struct.hw_fib** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %84 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %86 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %85, i32 0, i32 5
  %87 = load %struct.hw_fib*, %struct.hw_fib** %86, align 8
  %88 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %89 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, 4
  %93 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %94 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = mul i64 %92, %100
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memset(%struct.hw_fib* %87, i32 0, i32 %102)
  %104 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %105 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %104, i32 0, i32 5
  %106 = load %struct.hw_fib*, %struct.hw_fib** %105, align 8
  %107 = bitcast %struct.hw_fib* %106 to i8*
  %108 = getelementptr inbounds i8, i8* %107, i64 4
  %109 = bitcast i8* %108 to %struct.hw_fib*
  %110 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %111 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %110, i32 0, i32 5
  store %struct.hw_fib* %109, %struct.hw_fib** %111, align 8
  %112 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %113 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 %115, 4
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  %118 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %119 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %118, i32 0, i32 5
  %120 = load %struct.hw_fib*, %struct.hw_fib** %119, align 8
  store %struct.hw_fib* %120, %struct.hw_fib** %5, align 8
  %121 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %122 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %124 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %125 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %124, i32 0, i32 2
  %126 = load %struct.fib*, %struct.fib** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.fib, %struct.fib* %126, i64 %128
  store %struct.fib* %129, %struct.fib** %4, align 8
  br label %130

130:                                              ; preds = %198, %57
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %133 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %132, i32 0, i32 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %138 = add nsw i32 %136, %137
  %139 = icmp slt i32 %131, %138
  br i1 %139, label %140, label %203

140:                                              ; preds = %130
  %141 = load %struct.fib*, %struct.fib** %4, align 8
  %142 = getelementptr inbounds %struct.fib, %struct.fib* %141, i32 0, i32 7
  store i64 0, i64* %142, align 8
  %143 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %144 = load %struct.fib*, %struct.fib** %4, align 8
  %145 = getelementptr inbounds %struct.fib, %struct.fib* %144, i32 0, i32 6
  store %struct.aac_dev* %143, %struct.aac_dev** %145, align 8
  %146 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %147 = load %struct.fib*, %struct.fib** %4, align 8
  %148 = getelementptr inbounds %struct.fib, %struct.fib* %147, i32 0, i32 4
  store %struct.hw_fib* %146, %struct.hw_fib** %148, align 8
  %149 = load %struct.fib*, %struct.fib** %4, align 8
  %150 = getelementptr inbounds %struct.fib, %struct.fib* %149, i32 0, i32 4
  %151 = load %struct.hw_fib*, %struct.hw_fib** %150, align 8
  %152 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.fib*, %struct.fib** %4, align 8
  %156 = getelementptr inbounds %struct.fib, %struct.fib* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load %struct.fib*, %struct.fib** %4, align 8
  %158 = getelementptr inbounds %struct.fib, %struct.fib* %157, i64 1
  %159 = load %struct.fib*, %struct.fib** %4, align 8
  %160 = getelementptr inbounds %struct.fib, %struct.fib* %159, i32 0, i32 1
  store %struct.fib* %158, %struct.fib** %160, align 8
  %161 = load %struct.fib*, %struct.fib** %4, align 8
  %162 = getelementptr inbounds %struct.fib, %struct.fib* %161, i32 0, i32 3
  %163 = call i32 @init_MUTEX_LOCKED(i32* %162)
  %164 = load %struct.fib*, %struct.fib** %4, align 8
  %165 = getelementptr inbounds %struct.fib, %struct.fib* %164, i32 0, i32 2
  %166 = call i32 @spin_lock_init(i32* %165)
  %167 = call i8* @cpu_to_le32(i32 -1)
  %168 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %169 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i8* %167, i8** %170, align 8
  %171 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %172 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @cpu_to_le16(i32 %173)
  %175 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %176 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.fib*, %struct.fib** %4, align 8
  %180 = getelementptr inbounds %struct.fib, %struct.fib* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  %182 = bitcast %struct.hw_fib* %181 to i8*
  %183 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %184 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = getelementptr inbounds i8, i8* %187, i64 4
  %189 = bitcast i8* %188 to %struct.hw_fib*
  store %struct.hw_fib* %189, %struct.hw_fib** %5, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %192 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %190, %193
  %195 = sext i32 %194 to i64
  %196 = add i64 %195, 4
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %140
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  %201 = load %struct.fib*, %struct.fib** %4, align 8
  %202 = getelementptr inbounds %struct.fib, %struct.fib* %201, i32 1
  store %struct.fib* %202, %struct.fib** %4, align 8
  br label %130

203:                                              ; preds = %130
  %204 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %205 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %204, i32 0, i32 2
  %206 = load %struct.fib*, %struct.fib** %205, align 8
  %207 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %208 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %207, i32 0, i32 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %213 = add nsw i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.fib, %struct.fib* %206, i64 %215
  %217 = getelementptr inbounds %struct.fib, %struct.fib* %216, i32 0, i32 1
  store %struct.fib* null, %struct.fib** %217, align 8
  %218 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %219 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %218, i32 0, i32 2
  %220 = load %struct.fib*, %struct.fib** %219, align 8
  %221 = getelementptr inbounds %struct.fib, %struct.fib* %220, i64 0
  %222 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %223 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %222, i32 0, i32 3
  store %struct.fib* %221, %struct.fib** %223, align 8
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %203, %54
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @fib_map_alloc(%struct.aac_dev*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @memset(%struct.hw_fib*, i32, i32) #1

declare dso_local i32 @init_MUTEX_LOCKED(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
