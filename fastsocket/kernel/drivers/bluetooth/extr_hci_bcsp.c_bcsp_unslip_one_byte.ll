; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_unslip_one_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_unslip_one_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcsp_struct = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@BCSP_W4_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid byte %02x after esc byte\00", align 1
@BCSP_W4_PKT_DELIMITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcsp_struct*, i8)* @bcsp_unslip_one_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsp_unslip_one_byte(%struct.bcsp_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.bcsp_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.bcsp_struct* %0, %struct.bcsp_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  store i8 -64, i8* %5, align 1
  store i8 -37, i8* %6, align 1
  %7 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %8 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %131 [
    i32 128, label %10
    i32 129, label %49
  ]

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %16 [
    i32 219, label %13
  ]

13:                                               ; preds = %10
  %14 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %15 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %14, i32 0, i32 0
  store i32 129, i32* %15, align 8
  br label %48

16:                                               ; preds = %10
  %17 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %18 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = call i32 @skb_put(%struct.TYPE_3__* %19, i32 1)
  %21 = call i32 @memcpy(i32 %20, i8* %4, i32 1)
  %22 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %23 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 64
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %16
  %32 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %33 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BCSP_W4_CRC, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %39 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %38, i32 0, i32 4
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 @bcsp_crc_update(i32* %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %31, %16
  %44 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %45 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %13
  br label %131

49:                                               ; preds = %2
  %50 = load i8, i8* %4, align 1
  %51 = zext i8 %50 to i32
  switch i32 %51, label %116 [
    i32 220, label %52
    i32 221, label %84
  ]

52:                                               ; preds = %49
  %53 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %54 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 @skb_put(%struct.TYPE_3__* %55, i32 1)
  %57 = call i32 @memcpy(i32 %56, i8* %5, i32 1)
  %58 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %59 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %52
  %68 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %69 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BCSP_W4_CRC, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %75 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %74, i32 0, i32 4
  %76 = call i32 @bcsp_crc_update(i32* %75, i32 192)
  br label %77

77:                                               ; preds = %73, %67, %52
  %78 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %79 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %78, i32 0, i32 0
  store i32 128, i32* %79, align 8
  %80 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %81 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %130

84:                                               ; preds = %49
  %85 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %86 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = call i32 @skb_put(%struct.TYPE_3__* %87, i32 1)
  %89 = call i32 @memcpy(i32 %88, i8* %6, i32 1)
  %90 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %91 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 64
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %84
  %100 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %101 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BCSP_W4_CRC, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %107 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %106, i32 0, i32 4
  %108 = call i32 @bcsp_crc_update(i32* %107, i32 219)
  br label %109

109:                                              ; preds = %105, %99, %84
  %110 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %111 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %110, i32 0, i32 0
  store i32 128, i32* %111, align 8
  %112 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %113 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %113, align 4
  br label %130

116:                                              ; preds = %49
  %117 = load i8, i8* %4, align 1
  %118 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %117)
  %119 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %120 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = call i32 @kfree_skb(%struct.TYPE_3__* %121)
  %123 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %124 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %123, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %124, align 8
  %125 = load i32, i32* @BCSP_W4_PKT_DELIMITER, align 4
  %126 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %127 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %129 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %116, %109, %77
  br label %131

131:                                              ; preds = %130, %2, %48
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bcsp_crc_update(i32*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i8 zeroext) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
