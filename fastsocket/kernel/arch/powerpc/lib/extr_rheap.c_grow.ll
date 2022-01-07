; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_rheap.c_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/lib/extr_rheap.c_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RHIF_STATIC_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %172

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.TYPE_9__* @kmalloc(i32 %30, i32 %31)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %6, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = icmp eq %struct.TYPE_9__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %172

38:                                               ; preds = %21
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %128

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = mul i64 4, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(%struct.TYPE_9__* %44, %struct.TYPE_9__* %47, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = bitcast %struct.TYPE_9__* %55 to i8*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = bitcast %struct.TYPE_9__* %59 to i8*
  %61 = ptrtoint i8* %56 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = ptrtoint %struct.TYPE_9__* %67 to i64
  store i64 %68, i64* %11, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %75
  %77 = ptrtoint %struct.TYPE_9__* %76 to i64
  store i64 %77, i64* %12, align 8
  store i32 0, i32* %8, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %7, align 8
  br label %79

79:                                               ; preds = %92, %43
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = call i32 @fixup(i64 %86, i64 %87, i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 1
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %7, align 8
  br label %79

97:                                               ; preds = %79
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = call i32 @fixup(i64 %98, i64 %99, i32 %100, i32* %102)
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 6
  %109 = call i32 @fixup(i64 %104, i64 %105, i32 %106, i32* %108)
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 5
  %115 = call i32 @fixup(i64 %110, i64 %111, i32 %112, i32* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RHIF_STATIC_BLOCK, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %97
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = call i32 @kfree(%struct.TYPE_9__* %125)
  br label %127

127:                                              ; preds = %122, %97
  br label %128

128:                                              ; preds = %127, %38
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 4
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %131, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* @RHIF_STATIC_BLOCK, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 %150
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 0, %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %154
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %166, %128
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = call i32 @list_add(i32* %162, i32* %164)
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 1
  store %struct.TYPE_9__* %170, %struct.TYPE_9__** %7, align 8
  br label %156

171:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %35, %18
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_9__* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @fixup(i64, i64, i32, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
