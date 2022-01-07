; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_kcryptd_crypt_write_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crypt_io = type { %struct.dm_crypt_io*, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, %struct.bio* }
%struct.bio = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.crypt_config* }
%struct.crypt_config = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_crypt_io*)* @kcryptd_crypt_write_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcryptd_crypt_write_convert(%struct.dm_crypt_io* %0) #0 {
  %2 = alloca %struct.dm_crypt_io*, align 8
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.dm_crypt_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_crypt_io* %0, %struct.dm_crypt_io** %2, align 8
  %11 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %12 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.crypt_config*, %struct.crypt_config** %14, align 8
  store %struct.crypt_config* %15, %struct.crypt_config** %3, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %17 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %22 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %25 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %24)
  %26 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %27 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %28 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %27, i32 0, i32 1
  %29 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %30 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @crypt_convert_init(%struct.crypt_config* %26, %struct.TYPE_8__* %28, i32* null, %struct.TYPE_7__* %31, i32 %32)
  br label %34

34:                                               ; preds = %174, %1
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %175

37:                                               ; preds = %34
  %38 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call %struct.bio* @crypt_alloc_buffer(%struct.dm_crypt_io* %38, i32 %39, i32* %7)
  store %struct.bio* %40, %struct.bio** %4, align 8
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = icmp ne %struct.bio* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %51 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  br label %175

52:                                               ; preds = %37
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %55 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store %struct.bio* %53, %struct.bio** %56, align 8
  %57 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %58 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = call i64 @bio_sectors(%struct.bio* %67)
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %74 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %73)
  %75 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %76 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %77 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %76, i32 0, i32 1
  %78 = call i32 @crypt_convert(%struct.crypt_config* %75, %struct.TYPE_8__* %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %80 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = call i32 @atomic_dec_and_test(i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %52
  %86 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @kcryptd_crypt_write_io_submit(%struct.dm_crypt_io* %86, i32 %87, i32 0)
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %175

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %98 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %52
  %100 = load i32, i32* %7, align 4
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* @BLK_RW_ASYNC, align 4
  %105 = load i32, i32* @HZ, align 4
  %106 = sdiv i32 %105, 100
  %107 = call i32 @congestion_wait(i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ false, %108 ], [ %113, %111 ]
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %174

119:                                              ; preds = %114
  %120 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %121 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %124 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call %struct.dm_crypt_io* @crypt_io_alloc(%struct.TYPE_6__* %122, %struct.TYPE_7__* %125, i32 %126)
  store %struct.dm_crypt_io* %127, %struct.dm_crypt_io** %5, align 8
  %128 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %129 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %128)
  %130 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %131 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %132 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %131, i32 0, i32 1
  %133 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %134 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %133, i32 0, i32 2
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @crypt_convert_init(%struct.crypt_config* %130, %struct.TYPE_8__* %132, i32* null, %struct.TYPE_7__* %135, i32 %136)
  %138 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %139 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %143 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %146 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %150 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %153 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %152, i32 0, i32 0
  %154 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %153, align 8
  %155 = icmp ne %struct.dm_crypt_io* %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %119
  %157 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %158 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %159 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %158, i32 0, i32 0
  store %struct.dm_crypt_io* %157, %struct.dm_crypt_io** %159, align 8
  br label %172

160:                                              ; preds = %119
  %161 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %162 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %161, i32 0, i32 0
  %163 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %162, align 8
  %164 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  %165 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %164, i32 0, i32 0
  store %struct.dm_crypt_io* %163, %struct.dm_crypt_io** %165, align 8
  %166 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %167 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %166, i32 0, i32 0
  %168 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %167, align 8
  %169 = call i32 @crypt_inc_pending(%struct.dm_crypt_io* %168)
  %170 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %171 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %170)
  br label %172

172:                                              ; preds = %160, %156
  %173 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %5, align 8
  store %struct.dm_crypt_io* %173, %struct.dm_crypt_io** %2, align 8
  br label %174

174:                                              ; preds = %172, %114
  br label %34

175:                                              ; preds = %94, %47, %34
  %176 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %2, align 8
  %177 = call i32 @crypt_dec_pending(%struct.dm_crypt_io* %176)
  ret void
}

declare dso_local i32 @crypt_inc_pending(%struct.dm_crypt_io*) #1

declare dso_local i32 @crypt_convert_init(%struct.crypt_config*, %struct.TYPE_8__*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.bio* @crypt_alloc_buffer(%struct.dm_crypt_io*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @crypt_convert(%struct.crypt_config*, %struct.TYPE_8__*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @kcryptd_crypt_write_io_submit(%struct.dm_crypt_io*, i32, i32) #1

declare dso_local i32 @congestion_wait(i32, i32) #1

declare dso_local %struct.dm_crypt_io* @crypt_io_alloc(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @crypt_dec_pending(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
