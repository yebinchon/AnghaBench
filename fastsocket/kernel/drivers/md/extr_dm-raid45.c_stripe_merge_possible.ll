; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_merge_possible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_merge_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.raid_set = type { i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.stripe_chunk = type { i32 }

@READ = common dso_local global i32 0, align 4
@WRITE_MERGED = common dso_local global i32 0, align 4
@WRITE_QUEUED = common dso_local global i32 0, align 4
@S_PROHIBITCHUNKIO = common dso_local global i64 0, align 8
@S_OVERWRITE = common dso_local global i64 0, align 8
@S_CANT_MERGE = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@S_CAN_MERGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*, i32)* @stripe_merge_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_merge_possible(%struct.stripe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.raid_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stripe_chunk*, align 8
  store %struct.stripe* %0, %struct.stripe** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.stripe*, %struct.stripe** %4, align 8
  %13 = getelementptr inbounds %struct.stripe, %struct.stripe* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.raid_set* @RS(i32 %14)
  store %struct.raid_set* %15, %struct.raid_set** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %17 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %90, %87, %46, %2
  %21 = load i32, i32* %10, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %104

24:                                               ; preds = %20
  %25 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %26 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i64 @DevFailed(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.stripe*, %struct.stripe** %4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %34, i32 %35)
  store %struct.stripe_chunk* %36, %struct.stripe_chunk** %11, align 8
  br label %90

37:                                               ; preds = %24
  %38 = load %struct.stripe*, %struct.stripe** %4, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.stripe_chunk* @stripe_chunk_check(%struct.stripe* %38, i32 %39, i32* %9)
  store %struct.stripe_chunk* %40, %struct.stripe_chunk** %11, align 8
  %41 = load %struct.stripe_chunk*, %struct.stripe_chunk** %11, align 8
  %42 = icmp ne %struct.stripe_chunk* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %37
  br label %20

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.stripe*, %struct.stripe** %4, align 8
  %50 = getelementptr inbounds %struct.stripe, %struct.stripe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %48, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %47
  %55 = load %struct.stripe_chunk*, %struct.stripe_chunk** %11, align 8
  %56 = load i32, i32* @READ, align 4
  %57 = call i32 @BL_CHUNK(%struct.stripe_chunk* %55, i32 %56)
  %58 = call i64 @bio_list_empty(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %54
  %61 = load %struct.stripe_chunk*, %struct.stripe_chunk** %11, align 8
  %62 = load i32, i32* @WRITE_MERGED, align 4
  %63 = call i32 @BL_CHUNK(%struct.stripe_chunk* %61, i32 %62)
  %64 = call i64 @bio_list_empty(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load %struct.stripe_chunk*, %struct.stripe_chunk** %11, align 8
  %68 = load i32, i32* @WRITE_QUEUED, align 4
  %69 = call i32 @BL_CHUNK(%struct.stripe_chunk* %67, i32 %68)
  %70 = call i64 @bio_list_empty(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %90

73:                                               ; preds = %66
  %74 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %75 = call i64 @RSCheckOverwrite(%struct.raid_set* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load %struct.stripe*, %struct.stripe** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @stripe_check_chunk_overwrite(%struct.stripe* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %82, %77, %73
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %60, %54, %47
  %88 = load %struct.stripe_chunk*, %struct.stripe_chunk** %11, align 8
  %89 = call i32 @SetChunkIo(%struct.stripe_chunk* %88)
  br label %20

90:                                               ; preds = %72, %33
  %91 = load %struct.stripe_chunk*, %struct.stripe_chunk** %11, align 8
  %92 = call i32 @ClearChunkIo(%struct.stripe_chunk* %91)
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load %struct.stripe*, %struct.stripe** %4, align 8
  %96 = getelementptr inbounds %struct.stripe, %struct.stripe* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.raid_set* @RS(i32 %97)
  %99 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @S_PROHIBITCHUNKIO, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @atomic_inc(i64 %102)
  br label %20

104:                                              ; preds = %20
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %107 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %113 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @S_OVERWRITE, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @atomic_inc(i64 %116)
  br label %137

118:                                              ; preds = %104
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %119, %120
  %122 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %123 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ult i32 %121, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %118
  %128 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %129 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @S_CANT_MERGE, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @atomic_inc(i64 %132)
  %134 = load i32, i32* @EPERM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %173

136:                                              ; preds = %118
  br label %137

137:                                              ; preds = %136, %111
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %140 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %147 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %145, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %144, %137
  %152 = load %struct.stripe*, %struct.stripe** %4, align 8
  %153 = load %struct.stripe*, %struct.stripe** %4, align 8
  %154 = getelementptr inbounds %struct.stripe, %struct.stripe* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @stripe_zero_chunk(%struct.stripe* %152, i32 %156)
  %158 = load %struct.stripe*, %struct.stripe** %4, align 8
  %159 = call i32 @StripeReconstruct(%struct.stripe* %158)
  %160 = call i32 @BUG_ON(i32 %159)
  %161 = load %struct.stripe*, %struct.stripe** %4, align 8
  %162 = call i32 @SetStripeReconstruct(%struct.stripe* %161)
  br label %166

163:                                              ; preds = %144
  %164 = load %struct.stripe*, %struct.stripe** %4, align 8
  %165 = call i32 @parity_xor(%struct.stripe* %164)
  br label %166

166:                                              ; preds = %163, %151
  %167 = load %struct.raid_set*, %struct.raid_set** %6, align 8
  %168 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @S_CAN_MERGE, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @atomic_inc(i64 %171)
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %166, %127
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i64 @DevFailed(i64) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local %struct.stripe_chunk* @stripe_chunk_check(%struct.stripe*, i32, i32*) #1

declare dso_local i64 @bio_list_empty(i32) #1

declare dso_local i32 @BL_CHUNK(%struct.stripe_chunk*, i32) #1

declare dso_local i64 @RSCheckOverwrite(%struct.raid_set*) #1

declare dso_local i64 @stripe_check_chunk_overwrite(%struct.stripe*, i32) #1

declare dso_local i32 @SetChunkIo(%struct.stripe_chunk*) #1

declare dso_local i32 @ClearChunkIo(%struct.stripe_chunk*) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local i32 @stripe_zero_chunk(%struct.stripe*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @StripeReconstruct(%struct.stripe*) #1

declare dso_local i32 @SetStripeReconstruct(%struct.stripe*) #1

declare dso_local i32 @parity_xor(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
