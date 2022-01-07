; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_prep_negotiate_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_channel_mgmt.c_vmbus_prep_negotiate_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmsg_hdr = type { i32 }
%struct.icmsg_negotiate = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %0, %struct.icmsg_negotiate* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.icmsg_hdr*, align 8
  %7 = alloca %struct.icmsg_negotiate*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.icmsg_hdr* %0, %struct.icmsg_hdr** %6, align 8
  store %struct.icmsg_negotiate* %1, %struct.icmsg_negotiate** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %21, i32 0, i32 0
  store i32 16, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = ashr i32 %23, 16
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 65535
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %18, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = bitcast i32* %32 to %struct.icmsg_negotiate*
  store %struct.icmsg_negotiate* %33, %struct.icmsg_negotiate** %7, align 8
  %34 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %35 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %37 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %38 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %86, %5
  %41 = load i32, i32* %19, align 4
  %42 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %43 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %40
  %47 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %48 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %46
  %58 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %59 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %57
  %69 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %70 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %78 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %12, align 4
  store i32 1, i32* %20, align 4
  br label %85

85:                                               ; preds = %68, %57, %46
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %40

89:                                               ; preds = %40
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  br label %151

93:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  %94 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %95 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %19, align 4
  br label %97

97:                                               ; preds = %147, %93
  %98 = load i32, i32* %19, align 4
  %99 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %100 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %103 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = icmp slt i32 %98, %105
  br i1 %106, label %107, label %150

107:                                              ; preds = %97
  %108 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %109 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %146

118:                                              ; preds = %107
  %119 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %120 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %118
  %130 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %131 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %13, align 4
  %138 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %139 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %14, align 4
  store i32 1, i32* %20, align 4
  br label %146

146:                                              ; preds = %129, %118, %107
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %97

150:                                              ; preds = %97
  br label %151

151:                                              ; preds = %150, %92
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %151
  %155 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %156 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  %157 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %158 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  br label %164

159:                                              ; preds = %151
  %160 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %161 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %160, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %163 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %154
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %167 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %166, i32 0, i32 2
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %173 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 0
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %179 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %178, i32 0, i32 2
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 %177, i32* %182, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.icmsg_negotiate*, %struct.icmsg_negotiate** %7, align 8
  %185 = getelementptr inbounds %struct.icmsg_negotiate, %struct.icmsg_negotiate* %184, i32 0, i32 2
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 1
  store i32 %183, i32* %188, align 4
  %189 = load i32, i32* %20, align 4
  ret i32 %189
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
