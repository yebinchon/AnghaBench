; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capifunc.c_clean_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capifunc.c_clean_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.list_head = type { i32 }

@adapter = common dso_local global %struct.TYPE_7__* null, align 8
@li_total_channels = common dso_local global i32 0, align 4
@li_config_table = common dso_local global %struct.TYPE_8__* null, align 8
@max_adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.list_head*)* @clean_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_adapter(i32 %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @adapter, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 %10
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* @li_total_channels, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %24 = bitcast %struct.TYPE_8__* %23 to %struct.list_head*
  %25 = load %struct.list_head*, %struct.list_head** %4, align 8
  %26 = call i32 @list_add(%struct.list_head* %24, %struct.list_head* %25)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @li_config_table, align 8
  br label %27

27:                                               ; preds = %22, %19
  br label %134

28:                                               ; preds = %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %133

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %39
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memmove(%struct.TYPE_8__* %40, %struct.TYPE_8__* %50, i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %129, %34
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %132

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %74
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %89
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = call i32 @memmove(%struct.TYPE_8__* %75, %struct.TYPE_8__* %90, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @li_config_table, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %116, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %121
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %123, %126
  %128 = call i32 @memmove(%struct.TYPE_8__* %107, %struct.TYPE_8__* %122, i32 %127)
  br label %129

129:                                              ; preds = %64
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %60

132:                                              ; preds = %60
  br label %133

133:                                              ; preds = %132, %28
  br label %134

134:                                              ; preds = %133, %27
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* @li_total_channels, align 4
  %136 = load i32, i32* %3, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %161, %134
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @max_adapter, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %137
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** @adapter, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %141
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** @adapter, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, %152
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %149, %141
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %137

164:                                              ; preds = %137
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.list_head*
  %174 = load %struct.list_head*, %struct.list_head** %4, align 8
  %175 = call i32 @list_add(%struct.list_head* %173, %struct.list_head* %174)
  br label %176

176:                                              ; preds = %169, %164
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = call i32 @memset(%struct.TYPE_7__* %177, i32 0, i32 24)
  br label %179

179:                                              ; preds = %194, %176
  %180 = load i32, i32* @max_adapter, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** @adapter, align 8
  %184 = load i32, i32* @max_adapter, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  %191 = xor i1 %190, true
  br label %192

192:                                              ; preds = %182, %179
  %193 = phi i1 [ false, %179 ], [ %191, %182 ]
  br i1 %193, label %194, label %197

194:                                              ; preds = %192
  %195 = load i32, i32* @max_adapter, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* @max_adapter, align 4
  br label %179

197:                                              ; preds = %192
  ret void
}

declare dso_local i32 @list_add(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @memmove(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
