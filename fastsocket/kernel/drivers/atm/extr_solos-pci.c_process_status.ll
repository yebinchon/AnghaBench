; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_process_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unexpected status interrupt version %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Status packet indicated Solos error on port %d (starting up?)\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Showtime\00", align 1
@ATM_PHY_SIG_LOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Port %d: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Port %d: %s @%d/%d kb/s%s%s%s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c", SNR \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [8 x i8] c", Attn \00", align 1
@ATM_PHY_SIG_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*, i32, %struct.sk_buff*)* @process_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_status(%struct.solos_card* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solos_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.solos_card* %0, %struct.solos_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %16 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %17 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %194

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = call i8* @next_string(%struct.sk_buff* %28)
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %194

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @simple_strtol(i8* %36, i8** null, i32 10)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %42 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %194

49:                                               ; preds = %35
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i8* @next_string(%struct.sk_buff* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %194

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %63 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 0, i32* %4, align 4
  br label %194

68:                                               ; preds = %57
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @simple_strtol(i8* %69, i8** %9, i32 10)
  store i32 %70, i32* %15, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %194

77:                                               ; preds = %68
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i8* @next_string(%struct.sk_buff* %78)
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %194

85:                                               ; preds = %77
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @simple_strtol(i8* %86, i8** %9, i32 10)
  store i32 %87, i32* %14, align 4
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %194

94:                                               ; preds = %85
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i8* @next_string(%struct.sk_buff* %95)
  store i8* %96, i8** %10, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %194

102:                                              ; preds = %94
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i32, i32* @ATM_PHY_SIG_LOST, align 4
  %108 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %109 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %107, i32* %115, align 4
  %116 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %117 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %118, i64 %120
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = call i32 @release_vccs(%struct.TYPE_4__* %122)
  %124 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %125 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %6, align 4
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 (i32*, i8*, i32, i8*, ...) @dev_info(i32* %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %128, i8* %129)
  store i32 0, i32* %4, align 4
  br label %194

131:                                              ; preds = %102
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = call i8* @next_string(%struct.sk_buff* %132)
  store i8* %133, i8** %11, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %194

139:                                              ; preds = %131
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = call i8* @next_string(%struct.sk_buff* %140)
  store i8* %141, i8** %12, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %194

147:                                              ; preds = %139
  %148 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %149 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %6, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sdiv i32 %154, 1000
  %156 = load i32, i32* %14, align 4
  %157 = sdiv i32 %156, 1000
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %165 = load i8*, i8** %11, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 (i32*, i8*, i32, i8*, ...) @dev_info(i32* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %152, i8* %153, i32 %155, i32 %157, i8* %164, i8* %165, i8* %172, i8* %173)
  %175 = load i32, i32* %15, align 4
  %176 = sdiv i32 %175, 424
  %177 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %178 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %179, i64 %181
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  store i32 %176, i32* %184, align 4
  %185 = load i32, i32* @ATM_PHY_SIG_FOUND, align 4
  %186 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %187 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %188, i64 %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i32 %185, i32* %193, align 4
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %147, %144, %136, %106, %99, %91, %82, %74, %61, %54, %40, %32, %24
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i8* @next_string(%struct.sk_buff*) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @release_vccs(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
