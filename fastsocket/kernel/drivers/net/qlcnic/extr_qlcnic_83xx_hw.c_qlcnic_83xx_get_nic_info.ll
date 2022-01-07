; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_nic_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@QLCNIC_CMD_GET_NIC_INFO = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get nic info %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_nic_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_cmd_args, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = load i32, i32* @QLCNIC_CMD_GET_NIC_INFO, align 4
  %13 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %10, %struct.qlcnic_adapter* %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 16
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @BIT_31, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %21
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %46 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %45, %struct.qlcnic_cmd_args* %10)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @dev_info(i32* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %193

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %63 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 65535
  %70 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %71 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -65536
  %78 = lshr i32 %77, 16
  %79 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %80 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 65535
  %87 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %88 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -65536
  %95 = lshr i32 %94, 16
  %96 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %97 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %104 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 255
  %111 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %112 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, -65536
  %119 = lshr i32 %118, 16
  %120 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %121 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 6
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 65535
  %128 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %129 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, -65536
  %136 = lshr i32 %135, 16
  %137 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %138 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %137, i32 0, i32 9
  store i32 %136, i32* %138, align 4
  %139 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 7
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 65535
  %145 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %146 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %145, i32 0, i32 10
  store i32 %144, i32* %146, align 4
  %147 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 7
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, -65536
  %153 = lshr i32 %152, 16
  %154 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %155 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %154, i32 0, i32 11
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 8
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %56
  %164 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 8
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 32766
  %170 = ashr i32 %169, 1
  %171 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %172 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %171, i32 0, i32 12
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %163, %56
  %174 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 8
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 65536
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 8
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 2147352576
  %188 = ashr i32 %187, 17
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %191 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %190, i32 0, i32 13
  store i32 %189, i32* %191, align 4
  br label %192

192:                                              ; preds = %181, %173
  br label %193

193:                                              ; preds = %192, %49
  %194 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %10)
  %195 = load i32, i32* %7, align 4
  ret i32 %195
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
