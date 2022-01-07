; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_csr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_csr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_csr = type { i32, %struct.TYPE_12__*, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_12__*, %struct.TYPE_12__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.csr1212_dentry* }
%struct.csr1212_dentry = type { %struct.TYPE_12__*, %struct.csr1212_dentry* }
%struct.TYPE_8__ = type { %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_7__ = type { i32 }

@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@CSR1212_CONFIG_ROM_SPACE_BASE = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_ROM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csr1212_parse_csr(%struct.csr1212_csr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csr1212_csr*, align 8
  %4 = alloca %struct.csr1212_dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.csr1212_csr* %0, %struct.csr1212_csr** %3, align 8
  %6 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %7 = icmp ne %struct.csr1212_csr* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %10 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %9, i32 0, i32 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %15 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %14, i32 0, i32 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %13, %8, %1
  %22 = phi i1 [ true, %8 ], [ true, %1 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %26 = call i32 @csr1212_parse_bus_info_block(%struct.csr1212_csr* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CSR1212_SUCCESS, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %134

32:                                               ; preds = %21
  %33 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %34 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %36 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %35, i32 0, i32 1
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %39 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %38, i32 0, i32 3
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %41, align 8
  %42 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %43 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %46 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %48, align 8
  %49 = load i32, i32* @CSR1212_CONFIG_ROM_SPACE_BASE, align 4
  %50 = and i32 %49, 65535
  %51 = sext i32 %50 to i64
  %52 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %53 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %57 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  store i64 %55, i64* %59, align 8
  %60 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %61 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %65 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %68 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %70, align 8
  %71 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %72 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %75 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %74, i32 0, i32 1
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %77, align 8
  %78 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %79 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %80 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = call i32 @csr1212_read_keyval(%struct.csr1212_csr* %78, %struct.TYPE_12__* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @CSR1212_SUCCESS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %32
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %134

88:                                               ; preds = %32
  %89 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %90 = getelementptr inbounds %struct.csr1212_csr, %struct.csr1212_csr* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %94, align 8
  store %struct.csr1212_dentry* %95, %struct.csr1212_dentry** %4, align 8
  br label %96

96:                                               ; preds = %128, %88
  %97 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %4, align 8
  %98 = icmp ne %struct.csr1212_dentry* %97, null
  br i1 %98, label %99, label %132

99:                                               ; preds = %96
  %100 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %4, align 8
  %101 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CSR1212_KV_ID_EXTENDED_ROM, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %99
  %109 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %4, align 8
  %110 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %108
  %116 = load %struct.csr1212_csr*, %struct.csr1212_csr** %3, align 8
  %117 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %4, align 8
  %118 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = call i32 @csr1212_read_keyval(%struct.csr1212_csr* %116, %struct.TYPE_12__* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @CSR1212_SUCCESS, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %2, align 4
  br label %134

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %108, %99
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %4, align 8
  %130 = getelementptr inbounds %struct.csr1212_dentry, %struct.csr1212_dentry* %129, i32 0, i32 1
  %131 = load %struct.csr1212_dentry*, %struct.csr1212_dentry** %130, align 8
  store %struct.csr1212_dentry* %131, %struct.csr1212_dentry** %4, align 8
  br label %96

132:                                              ; preds = %96
  %133 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %124, %86, %30
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @csr1212_parse_bus_info_block(%struct.csr1212_csr*) #1

declare dso_local i32 @csr1212_read_keyval(%struct.csr1212_csr*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
