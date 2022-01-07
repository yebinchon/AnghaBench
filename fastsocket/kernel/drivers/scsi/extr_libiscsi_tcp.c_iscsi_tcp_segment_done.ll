; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_segment_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_tcp_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.iscsi_segment = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"copied %u %u size %u %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"xmit\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"total copied %u total size %u\0A\00", align 1
@CAP_PADDING_OFFLOAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"consume %d pad bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_segment_done(%struct.iscsi_tcp_conn* %0, %struct.iscsi_segment* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  %7 = alloca %struct.iscsi_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist, align 4
  %11 = alloca i32, align 4
  store %struct.iscsi_tcp_conn* %0, %struct.iscsi_tcp_conn** %6, align 8
  store %struct.iscsi_segment* %1, %struct.iscsi_segment** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %16 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %26 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ISCSI_DBG_TCP(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %21, i8* %25)
  %27 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %78

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %36 = call i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment* %35)
  %37 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %38 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %62, label %41

41:                                               ; preds = %34
  %42 = call i32 @sg_init_table(%struct.scatterlist* %10, i32 1)
  %43 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %44 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %43, i32 0, i32 10
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @sg_page(%struct.TYPE_8__* %45)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %49 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %52 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %50, %53
  %55 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %56 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %55, i32 0, i32 10
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %54, %59
  %61 = call i32 @sg_set_page(%struct.scatterlist* %10, i32 %46, i32 %47, i32 %60)
  br label %72

62:                                               ; preds = %34
  %63 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %64 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %67 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @sg_init_one(%struct.scatterlist* %10, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %62, %41
  %73 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %74 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @crypto_hash_update(i64 %75, %struct.scatterlist* %10, i32 %76)
  br label %78

78:                                               ; preds = %72, %31, %4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %81 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %85 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %88 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @iscsi_tcp_segment_map(%struct.iscsi_segment* %92, i32 %93)
  store i32 0, i32* %5, align 4
  br label %213

95:                                               ; preds = %78
  %96 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %97 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %100 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %104 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %106 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %108 = call i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment* %107)
  %109 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %110 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %113 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %116 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ISCSI_DBG_TCP(%struct.TYPE_9__* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %114, i64 %117)
  %119 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %120 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = zext i32 %121 to i64
  %123 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %124 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %95
  %128 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %129 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %130 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %129, i32 0, i32 10
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = call i32 @sg_next(%struct.TYPE_8__* %131)
  %133 = call i32 @iscsi_tcp_segment_init_sg(%struct.iscsi_segment* %128, i32 %132, i32 0)
  %134 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @iscsi_tcp_segment_map(%struct.iscsi_segment* %134, i32 %135)
  %137 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %138 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @BUG_ON(i32 %141)
  store i32 0, i32* %5, align 4
  br label %213

143:                                              ; preds = %95
  %144 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %145 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %144, i32 0, i32 0
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CAP_PADDING_OFFLOAD, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %185, label %156

156:                                              ; preds = %143
  %157 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %158 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = zext i32 %159 to i64
  %161 = call i32 @iscsi_padding(i64 %160)
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %156
  %165 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %166 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 (%struct.TYPE_9__*, i8*, i32, ...) @ISCSI_DBG_TCP(%struct.TYPE_9__* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %173 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %172, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, %171
  store i64 %175, i64* %173, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %178 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %180 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %183 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  store i32 0, i32* %5, align 4
  br label %213

184:                                              ; preds = %156
  br label %185

185:                                              ; preds = %184, %143
  %186 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %187 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %186, i32 0, i32 9
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %185
  %191 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %192 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %195 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @crypto_hash_final(i64 %193, i32 %196)
  %198 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %190
  %202 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %203 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  br label %209

205:                                              ; preds = %190
  %206 = load %struct.iscsi_segment*, %struct.iscsi_segment** %7, align 8
  %207 = getelementptr inbounds %struct.iscsi_segment, %struct.iscsi_segment* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  br label %209

209:                                              ; preds = %205, %201
  %210 = phi i32 [ %204, %201 ], [ %208, %205 ]
  %211 = call i32 @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment* %198, i32 %210)
  store i32 0, i32* %5, align 4
  br label %213

212:                                              ; preds = %185
  store i32 1, i32* %5, align 4
  br label %213

213:                                              ; preds = %212, %209, %164, %127, %91
  %214 = load i32, i32* %5, align 4
  ret i32 %214
}

declare dso_local i32 @ISCSI_DBG_TCP(%struct.TYPE_9__*, i8*, i32, ...) #1

declare dso_local i32 @iscsi_tcp_segment_unmap(%struct.iscsi_segment*) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @sg_page(%struct.TYPE_8__*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_hash_update(i64, %struct.scatterlist*, i32) #1

declare dso_local i32 @iscsi_tcp_segment_map(%struct.iscsi_segment*, i32) #1

declare dso_local i32 @iscsi_tcp_segment_init_sg(%struct.iscsi_segment*, i32, i32) #1

declare dso_local i32 @sg_next(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iscsi_padding(i64) #1

declare dso_local i32 @crypto_hash_final(i64, i32) #1

declare dso_local i32 @iscsi_tcp_segment_splice_digest(%struct.iscsi_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
