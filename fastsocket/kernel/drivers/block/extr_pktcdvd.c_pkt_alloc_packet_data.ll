; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_alloc_packet_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_alloc_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_data = type { i32, %struct.bio*, i64*, %struct.bio**, i32 }
%struct.bio = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FRAMES_PER_PAGE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.packet_data* (i32)* @pkt_alloc_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.packet_data* @pkt_alloc_packet_data(i32 %0) #0 {
  %2 = alloca %struct.packet_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_data*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.packet_data* @kzalloc(i32 40, i32 %8)
  store %struct.packet_data* %9, %struct.packet_data** %5, align 8
  %10 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %11 = icmp ne %struct.packet_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %145

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %16 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @pkt_bio_alloc(i32 %17)
  %19 = bitcast i8* %18 to %struct.bio*
  %20 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %21 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %20, i32 0, i32 1
  store %struct.bio* %19, %struct.bio** %21, align 8
  %22 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %23 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %22, i32 0, i32 1
  %24 = load %struct.bio*, %struct.bio** %23, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  br label %142

27:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @FRAMES_PER_PAGE, align 4
  %32 = sdiv i32 %30, %31
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load i32, i32* @__GFP_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @alloc_page(i32 %37)
  %39 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %40 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  store i64 %38, i64* %44, align 8
  %45 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %46 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  br label %108

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %60 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %59, i32 0, i32 4
  %61 = call i32 @spin_lock_init(i32* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %80, %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = call i8* @pkt_bio_alloc(i32 1)
  %68 = bitcast i8* %67 to %struct.bio*
  store %struct.bio* %68, %struct.bio** %6, align 8
  %69 = load %struct.bio*, %struct.bio** %6, align 8
  %70 = icmp ne %struct.bio* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %85

72:                                               ; preds = %66
  %73 = load %struct.bio*, %struct.bio** %6, align 8
  %74 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %75 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %74, i32 0, i32 3
  %76 = load %struct.bio**, %struct.bio*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bio*, %struct.bio** %76, i64 %78
  store %struct.bio* %73, %struct.bio** %79, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %62

83:                                               ; preds = %62
  %84 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  store %struct.packet_data* %84, %struct.packet_data** %2, align 8
  br label %146

85:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %104, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  %91 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %92 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %91, i32 0, i32 3
  %93 = load %struct.bio**, %struct.bio*** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.bio*, %struct.bio** %93, i64 %95
  %97 = load %struct.bio*, %struct.bio** %96, align 8
  store %struct.bio* %97, %struct.bio** %7, align 8
  %98 = load %struct.bio*, %struct.bio** %7, align 8
  %99 = icmp ne %struct.bio* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.bio*, %struct.bio** %7, align 8
  %102 = call i32 @bio_put(%struct.bio* %101)
  br label %103

103:                                              ; preds = %100, %90
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %86

107:                                              ; preds = %86
  br label %108

108:                                              ; preds = %107, %53
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %134, %108
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @FRAMES_PER_PAGE, align 4
  %113 = sdiv i32 %111, %112
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %109
  %116 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %117 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %116, i32 0, i32 2
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %126 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @__free_page(i64 %131)
  br label %133

133:                                              ; preds = %124, %115
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %109

137:                                              ; preds = %109
  %138 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %139 = getelementptr inbounds %struct.packet_data, %struct.packet_data* %138, i32 0, i32 1
  %140 = load %struct.bio*, %struct.bio** %139, align 8
  %141 = call i32 @bio_put(%struct.bio* %140)
  br label %142

142:                                              ; preds = %137, %26
  %143 = load %struct.packet_data*, %struct.packet_data** %5, align 8
  %144 = call i32 @kfree(%struct.packet_data* %143)
  br label %145

145:                                              ; preds = %142, %12
  store %struct.packet_data* null, %struct.packet_data** %2, align 8
  br label %146

146:                                              ; preds = %145, %83
  %147 = load %struct.packet_data*, %struct.packet_data** %2, align 8
  ret %struct.packet_data* %147
}

declare dso_local %struct.packet_data* @kzalloc(i32, i32) #1

declare dso_local i8* @pkt_bio_alloc(i32) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @kfree(%struct.packet_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
