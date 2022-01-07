; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, %struct.mgsl_struct* }

@mgsl_device_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ttySL%d\00", align 1
@MAX_TOTAL_DEVICES = common dso_local global i32 0, align 4
@maxframe = common dso_local global i32* null, align 8
@txdmabufs = common dso_local global i32* null, align 8
@txholdbufs = common dso_local global i32* null, align 8
@MAX_TX_HOLDING_BUFFERS = common dso_local global i32 0, align 4
@mgsl_device_list = common dso_local global %struct.mgsl_struct* null, align 8
@MGSL_BUS_TYPE_PCI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"SyncLink PCI v%d %s: IO=%04X IRQ=%d Mem=%08X,%08X MaxFrameSize=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"SyncLink ISA %s: IO=%04X IRQ=%d DMA=%d MaxFrameSize=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @mgsl_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_add_device(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca %struct.mgsl_struct*, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %4 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %5 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %4, i32 0, i32 12
  store %struct.mgsl_struct* null, %struct.mgsl_struct** %5, align 8
  %6 = load i32, i32* @mgsl_device_count, align 4
  %7 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %10 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @sprintf(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAX_TOTAL_DEVICES, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %106

21:                                               ; preds = %1
  %22 = load i32*, i32** @maxframe, align 8
  %23 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %24 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load i32*, i32** @maxframe, align 8
  %32 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %33 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %39 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %21
  %41 = load i32*, i32** @txdmabufs, align 8
  %42 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %43 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %40
  %50 = load i32*, i32** @txdmabufs, align 8
  %51 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %52 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %58 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %60 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %65 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %63, %49
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32*, i32** @txholdbufs, align 8
  %69 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %70 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %67
  %77 = load i32*, i32** @txholdbufs, align 8
  %78 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %79 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %85 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %87 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %92 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %91, i32 0, i32 3
  store i32 1, i32* %92, align 4
  br label %104

93:                                               ; preds = %76
  %94 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %95 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MAX_TX_HOLDING_BUFFERS, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @MAX_TX_HOLDING_BUFFERS, align 4
  %101 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %102 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %67
  br label %106

106:                                              ; preds = %105, %1
  %107 = load i32, i32* @mgsl_device_count, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @mgsl_device_count, align 4
  %109 = load %struct.mgsl_struct*, %struct.mgsl_struct** @mgsl_device_list, align 8
  %110 = icmp ne %struct.mgsl_struct* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  store %struct.mgsl_struct* %112, %struct.mgsl_struct** @mgsl_device_list, align 8
  br label %128

113:                                              ; preds = %106
  %114 = load %struct.mgsl_struct*, %struct.mgsl_struct** @mgsl_device_list, align 8
  store %struct.mgsl_struct* %114, %struct.mgsl_struct** %3, align 8
  br label %115

115:                                              ; preds = %120, %113
  %116 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %117 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %116, i32 0, i32 12
  %118 = load %struct.mgsl_struct*, %struct.mgsl_struct** %117, align 8
  %119 = icmp ne %struct.mgsl_struct* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %122 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %121, i32 0, i32 12
  %123 = load %struct.mgsl_struct*, %struct.mgsl_struct** %122, align 8
  store %struct.mgsl_struct* %123, %struct.mgsl_struct** %3, align 8
  br label %115

124:                                              ; preds = %115
  %125 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %126 = load %struct.mgsl_struct*, %struct.mgsl_struct** %3, align 8
  %127 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %126, i32 0, i32 12
  store %struct.mgsl_struct* %125, %struct.mgsl_struct** %127, align 8
  br label %128

128:                                              ; preds = %124, %111
  %129 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %130 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 4096
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %135 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %134, i32 0, i32 1
  store i32 4096, i32* %135, align 4
  br label %145

136:                                              ; preds = %128
  %137 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %138 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %139, 65535
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %143 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %142, i32 0, i32 1
  store i32 65535, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %133
  %146 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %147 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MGSL_BUS_TYPE_PCI, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %176

151:                                              ; preds = %145
  %152 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %153 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %152, i32 0, i32 11
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  %156 = trunc i64 %155 to i32
  %157 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %158 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %161 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %164 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %167 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %170 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %173 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %159, i32 %162, i32 %165, i32 %168, i32 %171, i32 %174)
  br label %193

176:                                              ; preds = %145
  %177 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %178 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %181 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %184 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %187 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %190 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, i32, i32, i32, i32, i32, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %182, i32 %185, i32 %188, i32 %191)
  br label %193

193:                                              ; preds = %176, %151
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
