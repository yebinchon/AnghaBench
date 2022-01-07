; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_clean_portres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_clean_portres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32 }
%struct.ehea_port_res = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i64* }
%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_6__ = type { i32, i64* }
%struct.TYPE_5__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port*, %struct.ehea_port_res*)* @ehea_clean_portres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_clean_portres(%struct.ehea_port* %0, %struct.ehea_port_res* %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store %struct.ehea_port_res* %1, %struct.ehea_port_res** %4, align 8
  %7 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %8 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %13 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %12, i32 0, i32 8
  %14 = call i32 @netif_napi_del(i32* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %17 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ehea_destroy_qp(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %185, label %22

22:                                               ; preds = %15
  %23 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %24 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ehea_destroy_cq(i32 %25)
  %27 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %28 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ehea_destroy_cq(i32 %29)
  %31 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %32 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ehea_destroy_eq(i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %63, %22
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %38 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %35
  %43 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %44 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %42
  %53 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %54 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_kfree_skb(i64 %60)
  br label %62

62:                                               ; preds = %52, %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %35

66:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %70 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  %75 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %76 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %86 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dev_kfree_skb(i64 %92)
  br label %94

94:                                               ; preds = %84, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %67

98:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %127, %98
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %102 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %99
  %107 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %108 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %106
  %117 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %118 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_kfree_skb(i64 %124)
  br label %126

126:                                              ; preds = %116, %106
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %99

130:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %159, %130
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %134 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %131
  %139 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %140 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %138
  %149 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %150 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @dev_kfree_skb(i64 %156)
  br label %158

158:                                              ; preds = %148, %138
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %131

162:                                              ; preds = %131
  %163 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %164 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = call i32 @vfree(i64* %166)
  %168 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %169 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = call i32 @vfree(i64* %171)
  %173 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %174 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = call i32 @vfree(i64* %176)
  %178 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %179 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = call i32 @vfree(i64* %181)
  %183 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %184 = call i32 @ehea_rem_smrs(%struct.ehea_port_res* %183)
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %162, %15
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ehea_destroy_qp(i64) #1

declare dso_local i32 @ehea_destroy_cq(i32) #1

declare dso_local i32 @ehea_destroy_eq(i32) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @vfree(i64*) #1

declare dso_local i32 @ehea_rem_smrs(%struct.ehea_port_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
