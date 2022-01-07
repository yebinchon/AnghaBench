; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_oid_mgt.c_mgt_set_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/prism54/extr_oid_mgt.c_mgt_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i8** }
%struct.islpci_mgmtframe = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PIMFOR_OP_ERROR = common dso_local global i32 0, align 4
@OID_NUM_LAST = common dso_local global i32 0, align 4
@isl_oid = common dso_local global %struct.TYPE_8__* null, align 8
@OID_FLAG_TYPE = common dso_local global i32 0, align 4
@PRV_STATE_READY = common dso_local global i64 0, align 8
@PIMFOR_OP_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgt_set_request(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.islpci_mgmtframe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.islpci_mgmtframe* null, %struct.islpci_mgmtframe** %11, align 8
  %17 = load i32, i32* @PIMFOR_OP_ERROR, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i32, i32* @OID_NUM_LAST, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ule i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %24, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %172

39:                                               ; preds = %4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %56, %57
  br label %60

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  %62 = load i8*, i8** %14, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  store i8* %64, i8** %14, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  store i64 %73, i64* %16, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %60
  %77 = load i8*, i8** %14, align 8
  store i8* %77, i8** %15, align 8
  br label %89

78:                                               ; preds = %60
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @OID_FLAG_TYPE, align 4
  %86 = and i32 %84, %85
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @mgt_cpu_to_le(i32 %86, i8* %87)
  br label %89

89:                                               ; preds = %78, %76
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = call i32 @down_write(i32* %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = call i64 @islpci_get_state(%struct.TYPE_7__* %97)
  %99 = load i64, i64* @PRV_STATE_READY, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %131

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PIMFOR_OP_SET, align 4
  %106 = load i64, i64* %16, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @islpci_mgt_transaction(i32 %104, i32 %105, i64 %106, i8* %107, i32 %108, %struct.islpci_mgmtframe** %11)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %101
  %113 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %11, align 8
  %114 = getelementptr inbounds %struct.islpci_mgmtframe, %struct.islpci_mgmtframe* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %12, align 4
  %118 = load %struct.islpci_mgmtframe*, %struct.islpci_mgmtframe** %11, align 8
  %119 = call i32 @islpci_mgt_release(%struct.islpci_mgmtframe* %118)
  br label %120

120:                                              ; preds = %112, %101
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @PIMFOR_OP_ERROR, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123, %120
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %127, %123
  br label %138

131:                                              ; preds = %96
  %132 = load i8*, i8** %14, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %130
  %139 = load i8*, i8** %14, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %141
  %145 = load i8*, i8** %9, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @memcpy(i8* %148, i8* %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %144, %141
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = call i32 @up_write(i32* %154)
  br label %156

156:                                              ; preds = %152, %138
  %157 = load i8*, i8** %9, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @isl_oid, align 8
  %161 = load i32, i32* %7, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @OID_FLAG_TYPE, align 4
  %167 = and i32 %165, %166
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @mgt_le_to_cpu(i32 %167, i8* %168)
  br label %170

170:                                              ; preds = %159, %156
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %38
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mgt_cpu_to_le(i32, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_7__*) #1

declare dso_local i32 @islpci_mgt_transaction(i32, i32, i64, i8*, i32, %struct.islpci_mgmtframe**) #1

declare dso_local i32 @islpci_mgt_release(%struct.islpci_mgmtframe*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mgt_le_to_cpu(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
