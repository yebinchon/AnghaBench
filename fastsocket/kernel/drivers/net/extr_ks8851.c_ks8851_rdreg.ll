; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851.c_ks8851_rdreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851.c_ks8851_rdreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8851_net = type { i32, %struct.spi_transfer*, %struct.spi_message, %struct.spi_transfer, %struct.spi_message, i32*, i64 }
%struct.spi_transfer = type { i32, i32*, i32* }
%struct.spi_message = type { i32 }

@KS_SPIOP_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"read: spi_sync() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8851_net*, i32, i32*, i32)* @ks8851_rdreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8851_rdreg(%struct.ks8851_net* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ks8851_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_transfer*, align 8
  %10 = alloca %struct.spi_message*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ks8851_net* %0, %struct.ks8851_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %15 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %19 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @KS_SPIOP_RD, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %28 = call i64 @ks8851_rx_1msg(%struct.ks8851_net* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %32 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %31, i32 0, i32 4
  store %struct.spi_message* %32, %struct.spi_message** %10, align 8
  %33 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %34 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %33, i32 0, i32 3
  store %struct.spi_transfer* %34, %struct.spi_transfer** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, 2
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %68

45:                                               ; preds = %4
  %46 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %47 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %46, i32 0, i32 2
  store %struct.spi_message* %47, %struct.spi_message** %10, align 8
  %48 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %49 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %48, i32 0, i32 1
  %50 = load %struct.spi_transfer*, %struct.spi_transfer** %49, align 8
  store %struct.spi_transfer* %50, %struct.spi_transfer** %9, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 0
  store i32 2, i32* %57, align 8
  %58 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 1
  store %struct.spi_transfer* %59, %struct.spi_transfer** %9, align 8
  %60 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %61 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %45, %30
  %69 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %70 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.spi_message*, %struct.spi_message** %10, align 8
  %73 = call i32 @spi_sync(i32 %71, %struct.spi_message* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %78 = call i32 @ks_err(%struct.ks8851_net* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %95

79:                                               ; preds = %68
  %80 = load %struct.ks8851_net*, %struct.ks8851_net** %5, align 8
  %81 = call i64 @ks8851_rx_1msg(%struct.ks8851_net* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32*, i32** %7, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @memcpy(i32* %84, i32* %86, i32 %87)
  br label %94

89:                                               ; preds = %79
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @memcpy(i32* %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  br label %95

95:                                               ; preds = %94, %76
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ks8851_rx_1msg(%struct.ks8851_net*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @ks_err(%struct.ks8851_net*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
